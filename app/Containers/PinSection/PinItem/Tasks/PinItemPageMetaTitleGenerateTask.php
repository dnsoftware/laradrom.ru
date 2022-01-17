<?php

namespace App\Containers\PinSection\PinItem\Tasks;

use App\Ship\Parents\Tasks\Task;
use Artesaos\SEOTools\Facades\SEOMeta;

class PinItemPageMetaTitleGenerateTask extends Task
{
    public function __construct()
    {
        // ..
    }

    public function run($pinitem)
    {
        $title =  $pinitem->title . ' | ' . $pinitem->pintype->name . ' ' . $pinitem->stackItemsData->pluck('name')->implode(', ');

        SEOMeta::setTitle($title, false);
    }
}
