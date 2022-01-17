<?php

namespace App\Containers\AppSection\Common\Tasks;

use App\Ship\Parents\Tasks\Task;
use Artesaos\SEOTools\Facades\SEOMeta;

class PageMetaDescriptionGenerateSimpleTask extends Task
{
    public function run($description)
    {
        SEOMeta::setDescription($description, false);
    }
}
