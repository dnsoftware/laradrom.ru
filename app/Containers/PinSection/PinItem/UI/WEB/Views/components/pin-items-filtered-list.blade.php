<div class="pingrid shadow-xl sm:rounded-lg" >

    @foreach($pins as $pkey => $pin)

        <div class="pitem border text-justify" pin_id="{{$pin->id}}" relevant_board_id="{{$getBoardId($pin->id)}}" >

          <div style="background-color: #fafafa; margin-bottom: 12px; border-bottom: 1px solid #e5e7eb;">
            <div style="margin-bottom: 14px;" >
                {{--
                <img src="/storage/pins-header-images/black.png" style="
                    max-height: 100px;
                    object-fit: cover;
                    margin: auto;
                    width: 100%;
                    border-radius: 8px 8px 0 0;
                    outline: 0px solid red;
                ">
                --}}

                <div style="position: absolute; top: 0; left: 0; border: solid 0px #777;
                    font-size: 11px; background-color: #{{$getPinTypeBackColor($pin->pintype_id)}}; color: #555; padding: 0 10px;
                    border-bottom-right-radius: 8px; border-top-left-radius: 8px;
                    border-bottom: 1px solid #e5e7eb;
                    border-right: 1px solid #e5e7eb;
                     ">
                    {{$pinTypes->get($pin->pintype_id)->name}}
                </div>


                {{----}}
                <div style="position: absolute; top: 0; right: 0; display: flex;

                ">
                    {{ $i = 0 ? '' : '' }}
                    @foreach ($pinsStacks[$pin->id] as $pkey => $pval)
                        @if (++$i > 3)
                            @break;
                        @endif
                        <div style="display: block; white-space: nowrap;
                            font-size: 10px; background-color: #{{$stackItems->get($pval['stackitem_id'])->back_color}}; color: #aaa; padding: 0 10px;
                            border-bottom-left-radius: 8px; border-top-right-radius: 8px; bottom: -5px; right: 0px;
                            border-bottom: 1px solid #e5e7eb;
                            border-left: 1px solid #e5e7eb;
                            ">
                            {{$stackItems->get($pval['stackitem_id'])->name}}
                        </div>
                    @endforeach
                </div>
                {{----}}

            </div>

            <a class="pinhead" style="display: inline-block; width: 100%; position: relative;
                            border: solid 0px #ddd; padding: 12px 15px 5px 15px;
                            "
               href="{{route('web_pinitem_show', ['id' => $pin->id, 'slug'=>$pin->slug])}}">
                {!! $pin->title !!}

            </a>
          </div>

            <div class="essence" pin_id="{{$pin->id}}">
                {!! $pin->essence !!}
            </div>
            <div class="toolbar" style="">
                <div style="display: flex; align-items: center; margin-bottom: 1px;">
                    <div style="margin-left: 0; display: flex; align-items: center;">
                        <a href="/userpinlist/{{$getBoardUserId($pin->id)}}/{{$getUserBoardSlug($pin->id)}}"
                           title="{{$pinUserboards->get($pinItemboards[$pin->id]->board_user_id)->name}}"
                           style="margin-right: 5px;
                                ">
                            @if ($getProfilePhotoPath($pin->id))
                                <i class="fas fa-lg " style="border: #ddd solid 0px; align-items:
                                    center; justify-content: center; display: flex;
                                    border-radius: 17px; width: 34px; height: 34px; background-image:
                                    url('/storage/{{$getProfilePhotoPath($pin->id)}}');
                                    background-repeat: no-repeat; background-size: cover;
                                    "></i>

                            @else
                                <i class="fas fa-user fa-lg" style="border: #ddd solid 1px; align-items:
                                center; justify-content: center; display: flex;
                                border-radius: 15px; width: 30px; height: 30px;  color: #777;"></i>
                            @endif
                        </a>

                        <a class="pinboard" href="/pinlist/{{$getBoardId($pin->id)}}/{{$getBoardListSlug($pin->id)}}" style="color: #777; font-size: 11px; display: inline-block; margin-left: 6px;">

                            {{$getBoardListName($pin->id)}}
                        </a>
                    </div>
                </div>
                <div style="text-align: right; color: #777; padding-bottom: 0px; margin-top: 5px;">
                    <i class="far fa-comment-dots"></i> <span>0</span>
                    <i class="fas fa-retweet" style="color: #777; margin-left: 10px;"></i> <span>0</span>
                    <i class="far fa-heart" style="color: #f00; margin-left: 10px;"></i> <span>0</span>
                </div>
            </div>


        </div>

    @endforeach

</div>
