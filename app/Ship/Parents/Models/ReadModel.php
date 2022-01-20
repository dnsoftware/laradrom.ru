<?php

namespace App\Ship\Parents\Models;

use App\Ship\Parents\Exceptions\WriteOperationIsNotAllowedForReadModel;
use Illuminate\Database\Eloquent\Builder;

abstract class ReadModel extends BaseModel
{
    protected $connection = '';

    public $incrementing = false;

    public function __construct()
    {
        parent::__construct();
        $this->connection = config('database.read_connection');
    }

    protected function performInsert(Builder $query)
    {
        throw new WriteOperationIsNotAllowedForReadModel();
    }
    protected function performUpdate(Builder $query)
    {
        throw new WriteOperationIsNotAllowedForReadModel();
    }
    protected function performDeleteOnModel()
    {
        throw new WriteOperationIsNotAllowedForReadModel();
    }
    public function truncate()
    {
        throw new WriteOperationIsNotAllowedForReadModel();
    }
}

