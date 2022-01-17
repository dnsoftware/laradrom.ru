<?php

namespace App\Containers\PinSection\PinItem\Tasks;

use App\Ship\Parents\Tasks\Task;
use Artesaos\SEOTools\Facades\SEOMeta;

class PinItemPageMetaDescriptionGenerateTask extends Task
{
    public function __construct()
    {
        // ..
    }

    /**
     * Вычленяем значимую инфу и обрезаем под допустимый размер
     * @param $pinitem
     */
    public function run($pinitem)
    {
        $description = trim($pinitem->seo_description);

        if (trim($pinitem->seo_description) == '') {
            $raw_parts = explode('.' , strip_tags($pinitem->essence));

            $temp = [];
            foreach ($raw_parts as $rkey => $rval) {
                $temp[] = trim($rval);
                // 200 - примерно допустимая длина метатега description
                $description = implode('. ', $temp);
                if (mb_strlen($description) > 200) {
                    break;
                }
            }
        }

        SEOMeta::setDescription($description);
    }
}
