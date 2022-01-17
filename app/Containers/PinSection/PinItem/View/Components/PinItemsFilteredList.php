<?php

namespace App\Containers\PinSection\PinItem\View\Components;

use Illuminate\View\Component;

class PinItemsFilteredList extends Component
{
    public $pins;
    public $pinsData;

    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct($pins, $pinsData)
    {
        $this->pins = $pins;
        $this->pinsData = $pinsData;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('pinSection@pinItem::components.pin-items-filtered-list', $this->pinsData);
    }

    public function getBoardId(int $pinId)
    {
        return $this->pinsData['pinItemboards'][$pinId]->board_id;
    }

    public function getPinTypeBackColor(int $pinTypeId)
    {
        return $this->pinsData['pinTypes']->get($pinTypeId)->back_color;
    }

    /**
     * Получение кода юзера-владельца доски
     */
    public function getBoardUserId(int $pinId)
    {
        return $this->pinsData['pinItemboards'][$pinId]->board_user_id;
    }

    /**
     * Получение слага имени юзера по коду юзера-владельца доски
     * из массива юзеров
     */
    public function getUserBoardSlug(int $pinId)
    {
        return $this->pinsData['pinUserboards']->get($this->getBoardUserId($pinId))->slug;
    }

    /**
     * Получение пути к фото профиля юзера-владельца доски
     */
    public function getProfilePhotoPath(int $pinId)
    {
        return $this->pinsData['pinUserboards']->get($this->getBoardUserId($pinId))->profile_photo_path;
    }


    /**
     * Получение слага доски по коду юзера-владельца доски
     * из массива досок
     */
    public function getBoardListSlug(int $pinId)
    {
        return $this->pinsData['boardList']->get($this->getBoardId($pinId))->slug;
    }

    /**
     * Получение имени доски по коду юзера-владельца доски
     * из массива досок
     */
    public function getBoardListName(int $pinId)
    {
        return $this->pinsData['boardList']->get($this->getBoardId($pinId))->name;
    }

}
