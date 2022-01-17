<?php

namespace App\Containers\PinSection\PinBoard\Models;

use App\Ship\Parents\Models\Model;

class PinBoard extends Model
{

    protected $fillable = [
        'parent_id',
        'user_id',
        'name'
    ];

    protected $attributes = [

    ];

    protected $hidden = [

    ];

    protected $casts = [

    ];

    protected $dates = [
        'created_at',
        'updated_at',
    ];

    /**
     * A resource key to be used in the serialized responses.
     */
    protected string $resourceKey = 'PinBoard';

    /*TODO deprecated удалить  */
    public function subboards()
    {
        return $this->hasMany(\App\Containers\PinSection\PinBoard\Models\PinBoard::class, 'parent_id', 'id' );
    }

    public function parent()
    {
        return $this->belongsTo(PinBoard::class, 'parent_id', 'id');
    }

}
