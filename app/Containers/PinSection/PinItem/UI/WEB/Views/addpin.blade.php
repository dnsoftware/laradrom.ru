<x-laradrom-layout>


    <div class="py-10">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8" >

            <h2 class="text-xl text-green-500">Добавление нового пина</h2>

            <form method="post" id="addpin" action="/pinitems/store">
                @csrf

                @if(session('success'))
                    <div class="bg-green-400 w-96 p-2 mb-4">
                        {{ session()->get('success') }}
                    </div>
                @endif

                @if ($errors->any())
                    <div class="bg-red-400 w-96 p-2 mb-4">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif

                <div class="my-4">

                    <select name="publication_status" id="publication_status" class="w-80 text-sm p-1">
                        <option class="text-sm" value="" class="m-4">статус публикации</option>
                        @foreach ($publication_statuses as $status => $status_name)
                            <option value="{{$status}}" @if($status == old('publication_status')) selected @endif>
                                {{$status_name}}
                            </option>
                        @endforeach
                    </select>

                </div>

                <div class="my-4 ">
                    <input type="text" name="title" class="w-full p-1 text-sm" placeholder="Добавьте название" value="{{old('title')}}">
                </div>


                <div class="checkbox_container max-full">

                    <div class="text-sm">Технология:</div>
                    <ul class="ks-cboxtags max-full">
                        @foreach ($stack_items as $key => $val)
                            <li>
                                <input type="checkbox" id="stack{{$val->id}}"
                                       @if (old('stacks') && in_array($val->id, old('stacks'))) checked @endif
                                       name="stacks[{{$val->id}}]" value="{{$val->id}}">
                                <label for="stack{{$val->id}}">{{$val->name}}</label>
                            </li>
                        @endforeach
                    </ul>

                </div>

                <div class="flex mt-4">
                    <div class="w-80" style="">
                        <label for="essence" class="text-sm">Короткий пин:</label>
                        <textarea name="essence" id="essence" class="w-80 h-96">{{old('essence')}}</textarea>
                    </div>

                    <div class="mx-4">

                        <div class="my-4">
                            <div class="text-sm">Тип пина:</div>
                            @foreach ($pin_types as $pkey => $pval)
                                <div class="form_radio_btn">

                                    <input id="pin_type_{{$pval->id}}" type="radio" name="pintype_id"
                                           value="{{$pval->id}}" @if($pval->id == old('pintype_id')) checked @endif>

                                    <label for="pin_type_{{$pval->id}}">{{$pval->name}}</label>

                                </div>
                            @endforeach

                        </div>

                        <div class="my-4">

                            <select name="board_id"  id="board_id" class="w-80 text-sm p-1">
                                <option value="0" class="m-4">выберите пинлист</option>
                                @foreach ($boards as $bkey => $board)
                                    <option class="text-sm" value="{{$board->id}}" @if($board->id == old('board_id')) selected @endif>
                                        {{$board->name}} </option>
                                @endforeach
                            </select>

                            <a href="/dashboard/getpinboard" class="rounded h-6" id="getpinboard"> > </a>

                        </div>

                        <div class="my-4 ">
                            <label for="pin_tags" class="text-sm">Теги (через запятую):</label><br>
                            <textarea name="pin_tags" id="pin_tags" class="w-80 h-25 text-sm">{{old('pin_tags')}}</textarea>
                        </div>

                        <div class="my-4 ">
                            <input type="text" name="target_link" class="w-80 text-sm p-1" placeholder="Добавьте целевую ссылку" value="{{old('target_link')}}">
                        </div>

                        <div>
                            <input type="submit" value="Сохранить" class="p-2 cursor-pointer bg-green-600 rounded text-white">
                        </div>

                        <div class="my-4 ">
                            <label for="seo_description" class="text-sm">SEO Description (не обязательное):</label><br>
                            <textarea name="seo_description" id="seo_description" style="width: 310px; height: 120px;" class="text-sm">{{old('seo_description')}}</textarea>
                        </div>

                    </div>


                </div>


                <div class="my-4 max-full" style="">
                    <label for="content">Подробная информация</label>
                    <textarea name="content" id="pin_content" class="w-full min-w-xs" >{{old('content')}}</textarea>
                </div>



            </form>

            <div id="addsubboard" class="modal">

                <div id="parent_board"></div>
                <form id="savenewsub_form" action="savenewsubboard" method="post">
                    @csrf
                    <input type="hidden" id="parent_board_id" name="parent_board_id" value=""><br>

                    <label for="subname">Добавить новую доску в раздел </label><span id="parent_board_name"></span><br>
                    <input type="text" name="subname" value="">

                    <div id="savenewsubboard" >Сохранить</div>

                </form>

            </div>

        </div>
    </div>


    @push('css')
        <link href="/css/jquery.modal.min.css" rel="stylesheet">
        <link href="/css/checkbox.ui.css" rel="stylesheet">
        <link href="/css/radiobutton.ui.css" rel="stylesheet">
        <link href="/css/pinsection/pinitem/acor_choice.css" rel="stylesheet">

        <link href="/css/packages/prism/prism.css" rel="stylesheet">
    @endpush


    @push('jscripts')
        <script src="/packages/tinymce/tinymce.min.js"></script>
        <script src="/packages/prism/prism.js"></script>
    @endpush

    @push('after_scripts')

        <script src="{{ asset('js/jquery.modal.min.js') }}"></script>

        <script src="/js/pinsection/pinitem/add_and_edit_pin_events.js"></script>
        <script src="/js/pinsection/pinitem/add_and_edit_pin_tinymce_init.js"></script>

    @endpush

</x-laradrom-layout>




