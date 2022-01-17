<?php

namespace App\Containers\PinSection\PinItem\Tasks;

use App\Ship\Parents\Tasks\Task;
use Illuminate\Database\Eloquent\Collection;

class GetPinlistItemboardsTask extends Task
{
    private $pin_itemboards = [];

    /** TODO доделать поиск релевантного вторичного...
     * Получение для каждого пина соответствующего пинлиста (первичного или же, при отсутствии (если был удален первичный пин и т.п.)
     * наиболее релевантного вторичного  )
     *
     * @param Collection $pins
     * @return array
     */
    public function run(Collection $pins)
    {
        $pins->each(function ($item, $key)  {
            $this->pin_itemboards[$item->id] = $item->itemboards->get(0);
        });

        return $this->pin_itemboards;
    }
}
