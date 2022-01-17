<?php

namespace App\Containers\AppSection\Common\Tasks;

use App\Ship\Parents\Tasks\Task;
use Artesaos\SEOTools\Facades\SEOMeta;

class PageMetaTitleGenerateSimpleTask extends Task
{
    public function run($title)
    {
        SEOMeta::setTitle($title, false);
    }
}
