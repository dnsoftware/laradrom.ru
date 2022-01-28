<?php

namespace App\Containers\PinSection\PinItem\Models;

use App\Containers\PinSection\PinBoard\Models\PinBoard;
use App\Containers\PinSection\PinItemboard\Models\PinItemboard;
use App\Containers\PinSection\PinType\Models\PinType;
use App\Containers\PinSection\StackItem\Models\PinitemStackitem;
use App\Containers\PinSection\StackItem\Models\StackItem;
use App\Ship\Parents\Models\Model;
use App\Ship\Parents\Models\WriteModel;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Laravel\Scout\Searchable;

class PinItem extends WriteModel
{
    use Searchable;

    const PUBLICATION_STATUSES = [
        'a' => 'Активный',
        'd' => 'Черновик',
        'h' => 'Скрытый'
    ];

    protected $table = 'pin_items';

    protected $fillable = [
        'user_id',
        'pintype_id',
        'title',
        'slug',
        'essence',
        'content',
        'target_link',
        'seo_description',
        'is_published',
        'publication_status',
    ];

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




}
