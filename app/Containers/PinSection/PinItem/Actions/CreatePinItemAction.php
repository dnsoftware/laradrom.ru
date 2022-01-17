<?php

namespace App\Containers\PinSection\PinItem\Actions;

use App\Containers\PinSection\PinBoard\Actions\PinToPrimaryBoardSubAction;
use App\Containers\PinSection\PinItem\Data\DTO\PinItemDto;
use App\Containers\PinSection\PinItem\Models\PinItem;
use App\Containers\PinSection\PinItem\Tasks\CreatePinItemTask;
use App\Containers\PinSection\PinItem\Tasks\PinItemFullTextIndexGenerateTask;
use App\Containers\PinSection\StackItem\Actions\RecreatePinitemStackitemRelationsAction;
use App\Services\TagService;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

/**
 * Создание нового пина
 */
class CreatePinItemAction extends Action
{
    public function run(PinItemDto $dto): PinItem
    {
        $user = Auth::user();

        $dto->user_id = $user->id;
        $dto->slug = Str::slug($dto->title, '_') ;

        $data = collect($dto)->toArray();

        if ($pin = PinItem::create($data)) {

            // Привязка к доске
            app(PinToPrimaryBoardSubAction::class)->run($pin, $data['board_id']);

            // Занесение стековых технологий
            app(RecreatePinitemStackitemRelationsAction::class)->run($pin->id, $data['stacks']);

            // Привязка тегов
            TagService::addTagList($data['pin_tags'], $pin->id, 'pin_tags');

            // Обновление FT индекса
            app(PinItemFullTextIndexGenerateTask::class)->run($pin->id);

        }

        return $pin;
    }
}
