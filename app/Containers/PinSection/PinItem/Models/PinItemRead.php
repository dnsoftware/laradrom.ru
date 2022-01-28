<?php

namespace App\Containers\PinSection\PinItem\Models;

use App\Containers\PinSection\PinBoard\Models\PinBoard;
use App\Containers\PinSection\PinItemboard\Models\PinItemboard;
use App\Containers\PinSection\PinType\Models\PinType;
use App\Containers\PinSection\StackItem\Models\PinitemStackitem;
use App\Containers\PinSection\StackItem\Models\StackItem;
use App\Ship\Parents\Models\Model;
use App\Ship\Parents\Models\ReadModel;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Laravel\Scout\Searchable;

class PinItemRead extends ReadModel
{
    use Searchable;

    const PUBLICATION_STATUSES = [
        'a' => 'Активный',
        'd' => 'Черновик',
        'h' => 'Скрытый'
    ];

    protected $table = 'pin_items';

    protected $fillable = [];

    protected $attributes = [];

    protected $hidden = [];

    protected $casts = [];

    protected $dates = [
        'created_at',
        'updated_at',
    ];

    /**
     * A resource key to be used in the serialized responses.
     */
    protected string $resourceKey = 'PinItem';


    /**
     * @var integer Доска пина в выдаче (главная, поиск и т.п.) наиболее релевантная. Не обязательно первичная, т.к. первичная может быть удалена
     */
    public $relevant_board_id;


    // Многие ко многим через промежуточную таблицу
    public function tags()
    {
        /**
         *  related: Модель таблицы с которой связываемся
         *  table: Промежуточная таблица
         *  foreignPivotKey: поле в промежуточной таблице для связи с текущей
         *  relatedPivotKey:  поле в промежуточной таблице для связи c 'related' таблицей
         */
        return $this->belongsToMany('App\Containers\AppSection\Tag\Models\Tag', 'pin_tags', 'pin_id', 'tag_id');
    }

    // Один ко многим, доски (пинлисты) пина
    public function itemboards()
    {
        return $this->hasMany(PinItemboard::class, 'pin_id');
    }

    //
    public function pintype()
    {
        return $this->belongsTo(PinType::class);
    }

    // Один ко многим, типы стека пина, только ID коды
    public function stackitems()
    {
        return $this->hasMany(PinitemStackitem::class, 'pinitem_id');
    }

    // Многие ко многим. Элементы стека технологий
    public function stackItemsData()
    {
        return $this->belongsToMany(StackItem::class, 'pinitems_stackitems', 'pinitem_id', 'stackitem_id');
    }

    //belong -> PinType

    public function _searchableAs()
    {
        //return 'searchable';
        return 'pin_items_searchable_index';

    }



    /**
     * Данные для полнотекстового поиска
     */
    public function toSearchableArray()
    {
        return [
            'title' => $this->title,
            'content' => $this->content,
            'essence' => $this->essence,
            'tags' => $this->tags->pluck('name')->implode(' '),
            //'seo_description' => ''
        ];
    }


    public function searchableOptions()
    {
        return [
            // You may wish to change the default name of the column
            // that holds parsed documents
            'column' => 'searchable',

            // You may want to store the index outside of the Model table
            // In that case let the engine know by setting this parameter to true.
            'external' => false,

            // If you don't want scout to maintain the index for you
            // You can turn it off either for a Model or globally
            'maintain_index' => true,
            // Ranking groups that will be assigned to fields
            // when document is being parsed.
            // Available groups: A, B, C and D.

            'rank' => [
                'fields' => [
                    'title' => 'A',
                    'content' => 'B',
                    'essence' => 'C',
                    'tags' => 'C',
                    'seo_description' => 'D',
                ],
                // Ranking weights for searches.
                // [D-weight, C-weight, B-weight, A-weight].
                // Default [0.1, 0.2, 0.4, 1.0].
                'weights' => [0.1, 0.2, 0.4, 1.0],
                // Ranking function [ts_rank | ts_rank_cd]. Default ts_rank.
                'function' => 'ts_rank_cd',
                // Normalization index. Default 0.
                'normalization' => 32,
            ],
            // You can explicitly specify a PostgreSQL text search configuration for the model.
            // Use \dF in psql to see all available configurationsion your database.
            'config' => 'russian',
        ];
    }





}
