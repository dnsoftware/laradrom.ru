<?php

namespace App\Containers\PinSection\PinItem\UI\WEB\Controllers;

use App\Containers\PinSection\PinItem\Actions\AddPinItemAction;
use App\Containers\PinSection\PinItem\Actions\EditPinItemAction;
use App\Containers\PinSection\PinItem\Actions\GetFilteredPinsByPinlistIdAction;
use App\Containers\PinSection\PinItem\Actions\GetFilteredPinsByPinTypesAction;
use App\Containers\PinSection\PinItem\Actions\GetFilteredPinsByUserIdAction;
use App\Containers\PinSection\PinItem\Data\DTO\FilteredPinsDtoFactory;
use App\Containers\PinSection\PinItem\Data\DTO\PinItemDtoFactory;
use App\Containers\PinSection\PinItem\Models\PinItem;
use App\Containers\PinSection\PinItem\UI\WEB\Requests\CreatePinItemRequest;
use App\Containers\PinSection\PinItem\UI\WEB\Requests\DeletePinItemRequest;
use App\Containers\PinSection\PinItem\UI\WEB\Requests\FilteredPinsRequest;
use App\Containers\PinSection\PinItem\UI\WEB\Requests\FindPinItemByIdRequest;
use App\Containers\PinSection\PinItem\UI\WEB\Requests\SearchPinsRequest;
use App\Containers\PinSection\PinItem\UI\WEB\Requests\UpdatePinItemRequest;
use App\Containers\PinSection\PinItem\UI\WEB\Requests\StorePinItemRequest;
use App\Containers\PinSection\PinItem\UI\WEB\Requests\EditPinItemRequest;
use App\Containers\PinSection\PinItem\Actions\CreatePinItemAction;
use App\Containers\PinSection\PinItem\Actions\FindPinItemByIdAction;
use App\Containers\PinSection\PinItem\Actions\UpdatePinItemAction;
use App\Ship\Parents\Controllers\WebController;
use Illuminate\Support\Facades\Auth;


//.
class Controller extends WebController
{

    public function show(FindPinItemByIdRequest $request, $id)
    {
        $pinitem = app(FindPinItemByIdAction::class)->run($request);

        return view('pinSection@pinItem::pin_item', compact('pinitem'));
    }


    public function show_part(FindPinItemByIdRequest $request, $id)
    {
        $pinitem = app(FindPinItemByIdAction::class)->run($request);

        return view('pinSection@pinItem::pin_item_core', compact('pinitem'));
    }


    /**
     * Полнотекстовый поиск по пинам
     */
    public function searchPins(SearchPinsRequest $request)
    {
        $items = PinItem::search($request->input('str'))
                //->usingPlainQuery()
                ->usingWebSearchQuery()
                //->usingTsQuery()
                ->get();

        foreach($items as $ikey => $ival) {
        ?>
            <p style="color: #f00;"><b><?= $ival->title; ?></b></p>
            <p ><?= $ival->essence;?></p>
            <p><?= $ival->content;?></p>
            <p><?= $ival->searchable;?></p>
        <?php
        }
    }


    // Открывает форму заведения нового пина
    public function create(CreatePinItemRequest $request)
    {
        $data = app(AddPinItemAction::class)->run();

        return view('pinSection@pinItem::addpin', $data);
    }

    // Сохраняет новый пин
    public function store(StorePinItemRequest $request)
    {
        $dto = app(PinItemDtoFactory::class)->fromRequest($request);
        $dto->user_id = Auth::user()->id;

        $pin = app(CreatePinItemAction::class)->run($dto);

        if ($pin) {
            return redirect('pin/'.$pin->id.'/edit')
                ->with([
                    'success' => 'Успешено добавлен!'
                ]);
        }

        return back();
    }

    // Открывает форму редактирования пина
    public function edit(EditPinItemRequest $request)
    {
        $data = app(EditPinItemAction::class)->run($request->id);

        return view('pinSection@pinItem::editpin', $data);
    }


    // Сохраняет отредактированный пин
    public function update(UpdatePinItemRequest $request)
    {
        $pin_id = $request->id;
        $dto = app(PinItemDtoFactory::class)->fromRequest($request);
        $dto->user_id = Auth::user()->id;

        app(UpdatePinItemAction::class)->run($pin_id, $dto);

        return redirect('pin/'.$pin_id.'/edit')
            ->with([
                'success' => 'Успешено обновлен!'
            ]);

    }

    public function destroy(DeletePinItemRequest $request)
    {
         //$result = app(DeletePinItemAction::class)->run($request);
         // ..
    }



    /**
     * Фильтрация по типам и стеку
     */
    public function byPinTypes(FilteredPinsRequest $request, $pinTypeSlug = 'all', $stackItemSlug = '')
    {
        $filterData = FilteredPinsDtoFactory::fromRequest(
            $request, pinTypeSlug: $pinTypeSlug, stackItemSlug: $stackItemSlug
        );

        $filteredPinsData = app(GetFilteredPinsByPinTypesAction::class)->run($filterData);

        return view('pinSection@pinItem::filtered_pins', array_merge(
            $filteredPinsData,
            ['pinTypeSlug' => $pinTypeSlug, 'stackItemSlug' => $stackItemSlug]) );

    }

    /**
     * Фильтрация по пользователю (Пины выбранного пользователя)
     */
    public function userPinList(FilteredPinsRequest $request, int $pinListUserId, string $slug)
    {
        $filterData = FilteredPinsDtoFactory::fromRequest(
            $request, pinListUserId: $pinListUserId,
        );

        $filteredPinsData = app(GetFilteredPinsByUserIdAction::class)->run($filterData);

        return view('pinSection@pinItem::user_filtered_pins',
            array_merge($filteredPinsData, ['pinTypeSlug' => 'all', 'stackItemSlug' => '',]) );
    }

    /**
     * Пины выбранного пинлиста (доски, рубрики)
     */
    public function pinList(FilteredPinsRequest $request, int $pinListId, string $slug)
    {
        $filterData = FilteredPinsDtoFactory::fromRequest(
            $request, pinListId: $pinListId,
        );

        $filteredPinsData = app(GetFilteredPinsByPinlistIdAction::class)->run($filterData);

        return view('pinSection@pinItem::filtered_pins', array_merge($filteredPinsData, ['pinTypeSlug' => 'all', 'stackItemSlug' => '',]) );
    }





}
