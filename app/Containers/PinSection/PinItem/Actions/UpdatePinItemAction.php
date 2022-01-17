<?php

namespace App\Containers\PinSection\PinItem\Actions;

use App\Containers\PinSection\PinBoard\Actions\PinToPrimaryBoardSubAction;
use App\Containers\PinSection\PinItem\Data\DTO\PinItemDto;
use App\Containers\PinSection\PinItem\Models\PinItem;
use App\Containers\PinSection\PinItem\Tasks\GetUserPinOrStopTask;
use App\Containers\PinSection\PinItem\Tasks\PinItemFullTextIndexGenerateTask;
use App\Containers\PinSection\PinItem\Tasks\UpdatePinItemTask;
use App\Containers\PinSection\StackItem\Actions\RecreatePinitemStackitemRelationsAction;
use App\Services\TagService;
use App\Ship\Parents\Actions\Action;
use Illuminate\Support\Str;

class UpdatePinItemAction extends Action
{
    public function run(int $pinId, PinItemDto $dto): bool
    {
        $pin = app(GetUserPinOrStopTask::class)->run($pinId, $dto->user_id);

        $slug = Str::slug($dto->title, '_') ;

        PinItem::where('id', $pinId)
            ->where('user_id', $dto->user_id)
            ->update([
                'pintype_id' => $dto->pintype_id,
                'title' => $dto->title,
                'slug' => $slug,
                'essence' => $dto->essence,
                'content' => $dto->content,
                'seo_description' => $dto->seo_description,
                'target_link' => $dto->target_link,
                'publication_status' => $dto->publication_status,
            ]);

        // Привязка к первичной доске
        app(PinToPrimaryBoardSubAction::class)->run($pin, $dto->board_id);

        // Занесение стековых технологий
        app(RecreatePinitemStackitemRelationsAction::class)->run($pinId, $dto->stacks);

        // Привязка тегов
        TagService::deleteAllPinTags($pinId);
        TagService::addTagList($dto->pin_tags, $pinId, 'pin_tags');

        // Обновление FT индекса
        //TODO закинуть в очередь
        app(PinItemFullTextIndexGenerateTask::class)->run($pinId);

        return true;

    }
}
