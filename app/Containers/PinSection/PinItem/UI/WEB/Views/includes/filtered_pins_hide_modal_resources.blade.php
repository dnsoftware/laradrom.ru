<div id="pin_save_buttons">
    <button id="repin_to_board" save_pin_id="" repin_from_board_id="">Сохранить</button>
</div>

<div id="save_on_board" class="modal">

    <div id="board_modal_error"></div>
    <div id="board_modal_success"></div>

    <div>Добавить в пинлист</div>
    <div class="acor-container" style="height: auto; overflow-y: auto; border: #efefef solid 1px;">

        @foreach($catalog as $ckey => $cval)
            <div style="display: flex">

                <div style="border: solid 0px; min-width: 200px; width: 300px;">
                    <input type="radio" name="acor" id="acor{{$cval->id}}" />
                    <label class="board_item " board_id="{{$cval->id}}" id="board{{$cval->id}}" style="display: inline-block;">{{$cval->name}} </label>

                </div>

            </div>
        @endforeach
    </div>
</div>

<div id="view_pin_window" class="modal" style="width: auto; max-width: 100%;">
    <div id="pin_content_modal">

    </div>
</div>


@push('css')
    <link href="/css/pinsection/pinitem/acor_choice.css" rel="stylesheet">
    <link href="/css/pinlist.css" rel="stylesheet">
    <link href="/css/jquery.modal.min.css" rel="stylesheet">
@endpush


@push('after_scripts')
    <script src="/packages/masonry/masonry.pkgd.min.js"></script>
    <script src="{{ asset('js/jquery.modal.min.js') }}"></script>
    <script src="/js/pinsection/pinitem/filtered_pins.js"></script>
@endpush
