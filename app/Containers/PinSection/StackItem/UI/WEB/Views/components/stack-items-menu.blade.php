<div class="mt-2 mb-6 ml-1" style="">
    @foreach ($stackItems as $pkey => $pval)
        <a style="padding: 4px 8px 2px;  margin: 3px 0; display: inline-block; white-space: nowrap; vertical-align: middle; "
           class="text-xs box-border rounded border-2 border-gray-500 border-opacity-30 hover:bg-green-600 hover:text-white
               @if ($stackItemSlug === $pval->slug) bg-green-600 text-white @else text-gray-700 @endif "
           href="{{url('/pintypes/'.$pinTypeSlug.'/'.$pval->slug)}}" >{{$pval->name}}</a>
    @endforeach
</div>
