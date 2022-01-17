<?php

namespace App\Containers\PinSection\PinBoard\Actions;

use App\Containers\PinSection\PinBoard\Models\PinBoard;
use App\Containers\PinSection\PinBoard\Tasks\CheckCurrentUserIsBoardOwnerTask;
use App\Containers\PinSection\PinItem\Models\PinItem;
use App\Containers\PinSection\PinItemboard\Models\PinItemboard;
use App\Ship\Parents\Actions\Action;
use Illuminate\Support\Facades\Auth;

class PinToSecondaryBoardSubAction extends Action
{
    // Репост оригинального пина на другую доску
    // TODO $repinFromBoardId - возможно ли вычислить автоматом? Чтобы не указывать на сайте явно..
    public function run(int $pinId, int $boardId, int $repinFromBoardId)
    {
        $user = Auth::user();

        if ( !$pin = PinItem::find($pinId) ) {
            return false;
        }

        // Если текущий юзер не является владельцем доски на которую идет перепост - ничего не делаем
        if (!app(CheckCurrentUserIsBoardOwnerTask::class)->run($boardId) ) {
            return false;
        }

        // Если такая привязка уже есть - ничего не делаем
        if(PinItemboard::where('pin_id', $pin->id )
            ->where('board_id', $boardId)
            ->first()) {

            return true;
        }

        //dd(PinItemboard::where('pin_id', $pin->id )
        //->where('board_id', $boardId)
        //->first());

        // Пин может быть только удален с одной доски и прикреплен к другой
        // Замену доски сделать затруднительно, т.к. пин может быть на нескольких досках

        // Проверяем первичная ли была доска привязки пина, формируем $is_primary_board
        $is_primary_board = 0;
        if (PinItemboard::where('pin_id', $pin->id)
            ->where('board_user_id', $user->id)
            ->where('is_primary_board', 1)
            ->first()) {
            $is_primary_board = 1;
            $repinFromBoardId = $boardId;
        }

        // Создаем новую привязку
        $pin_itemboard = PinItemboard::create([
            'pin_id' => $pin->id,
            'board_id' => $boardId,    //TODO при смене своей первичной доски ($is_primary_board = 1) нужно
            //TODO сменить значения поля repin_from_board_id для прорепиненных (сделать отдельный блок кода ниже)
            //TODO вторичные репины по идее тоже надо перебивать
            'repin_from_board_id' => $repinFromBoardId,
            'is_primary_board' => $is_primary_board
        ]);

        if ($pin_itemboard) {
            /**/
            // Удаляем старую доску привязки.
            PinItemboard::where('pin_id', $pin->id)
                ->where('board_user_id', $user->id)
                ->forceDelete();
            /**/
        }

        // Пересчет вспомогательных полей
        $board = PinBoard::find($boardId);
        $repin_from_board = PinBoard::find($repin_from_board_id);
        $fields = [
            'pin_user_id' => $pin->user_id,
            'board_user_id' => $board->user_id,
            'repin_from_user_id' => $repin_from_board->user_id
        ];

        // Обновление второстепенных полей
        if ($board = PinItemboard::find($pin_itemboard->id)) {
            $board->update($fields);
        }

        return true;

    }
}
