<?php

namespace App\Containers\PinSection\StackItem\Models;

use App\Ship\Parents\Models\Model;

class PinitemStackitem extends Model
{
    public $timestamps = false;

    protected $table = 'pinitems_stackitems';

    protected $fillable = [
        'pinitem_id',
        'stackitem_id'
    ];

    protected $attributes = [

    ];

    protected $hidden = [

    ];

    protected $casts = [

    ];


    /**
     * A resource key to be used in the serialized responses.
     */
    protected string $resourceKey = 'PinitemStackitem';


}
