<?php

namespace App\Containers\PinSection\PinItem\Actions;

use App\Containers\PinSection\PinItem\Models\PinItem;
use App\Containers\PinSection\PinItem\Models\PinItemRead;
use App\Containers\PinSection\PinItem\Tasks\FindPinItemByIdTask;
use App\Containers\PinSection\PinItem\Tasks\PinItemPageMetaDescriptionGenerateTask;
use App\Containers\PinSection\PinItem\Tasks\PinItemPageMetaTitleGenerateTask;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;
use Artesaos\SEOTools\Facades\SEOMeta;

class FindPinItemByIdAction extends Action
{
    public function run(Request $request): PinItemRead
    {

        $pinitem = app(FindPinItemByIdTask::class)->run($request->id);

        app(PinItemPageMetaTitleGenerateTask::class)->run($pinitem);
        app(PinItemPageMetaDescriptionGenerateTask::class)->run($pinitem);

        return $pinitem;
    }
}
