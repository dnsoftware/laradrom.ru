<?php

namespace App\Containers\PinSection\PinItemboard\Models;

use App\Ship\Parents\Models\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class PinItemboard extends Model
{

    use SoftDeletes;

    protected $fillable = [
        'pin_id',
        'board_id',
        'pin_user_id',
        'board_user_id',
        'repin_from_board_id',
        'repin_from_user_id',
        'is_primary_board'
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
    protected string $resourceKey = 'PinItemboard';
}
