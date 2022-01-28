<?php

namespace App\Ship\Parents\Models;


abstract class WriteModel extends BaseModel
{
    protected $connection = '';

    public function __construct()
    {
        parent::__construct();
        $this->connection = config('database.write_connection');
    }

}
