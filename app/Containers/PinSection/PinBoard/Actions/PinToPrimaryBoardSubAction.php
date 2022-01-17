<?php

namespace App\Containers\PinSection\PinBoard\Actions;

use App\Containers\PinSection\PinBoard\Models\PinBoard;
use App\Containers\PinSection\PinBoard\Tasks\CheckPinPrimaryBoardBindingTask;
use App\Containers\PinSection\PinItem\Models\PinItem;
use App\Containers\PinSection\PinItemboard\Models\PinItemboard;
use App\Ship\Parents\Actions\Action;
use Illuminate\Support\Facades\Auth;

class PinToPrimaryBoardSubAction extends Action
{
    // Привязка к первичной доске
    public function run(PinItem $pin, int $board_id)
    {
        $user = Auth::user();

        // Если такая привязка уже есть - ничего не делаем
        if(app(CheckPinPrimaryBoardBindingTask::class)->run($pin->id, $board_id) ) {

            return true;
        }

        // Замена первичной привязки
        $repin_from_board_id = $board_id;

        // Получаем старую доску, если есть
        $oldboard = PinItemboard::where('pin_id', $pin->id )
            ->where('is_primary_board', 1)
            ->where('board_id', '<>', $board_id)
            ->first();

        // Удаляем доску, если была
        PinItemboard::where('pin_id', $pin->id)
            ->where('is_primary_board', 1)
            ->delete();


        // Создаем новую привязку
        $pin_itemboard = PinItemboard::create([
            'pin_id' => $pin->id,
            'board_id' => $board_id,
            'repin_from_board_id' => $repin_from_board_id,

            'is_primary_board' => 1

        ]);

        // Пересчет вспомогательных полей
        $board = PinBoard::find($board_id);
        $fields = [
            'pin_user_id' => $pin->user_id,
            'board_user_id' => $board->user_id,
            'repin_from_user_id' => $board->user_id
        ];

        // Обновление второстепенных полей
        if ($board = PinItemboard::find($pin_itemboard->id)) {
            $board->update($fields);
        }


        // TODO перенести пересчет репинов в Job
        // Запускаем пересчет репинов
        // Если была смена старой привязки
        if ($oldboard) {

            PinItemboard::where('repin_from_board_id', $oldboard->board_id)
                ->update([
                    'repin_from_board_id' => $pin_itemboard->board_id
                ]);

            // Пересчет вспомогательных полей
            // не нужен, т.к. все остается тем же

        }


    }
}
