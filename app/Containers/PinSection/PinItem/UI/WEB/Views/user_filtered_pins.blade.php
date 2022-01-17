<x-laradrom-layout :layout-pintype-slug="$pinTypeSlug">

    <x-stack-items-menu :stack-items="$pinsData['stackItems']" :stack-item-slug="$stackItemSlug" :pin-type-slug="$pinTypeSlug"/>

    <div style="align-items: center; ">
        <a href="/user/{{$pinListUser->id}}/{{Str::slug($pinListUser->name)}}">
            @if (!$pinListUser->profile_photo_path)
                <i class="fas fa-user fa-3x rounded-lg" style="color: #777;"></i>
            @else
                <img class="w-16 rounded-lg" src="/storage/{{$pinListUser->profile_photo_path}}">
            @endif
        </a>

        <x-filtered-pins-header :page-header="$pageHeader" />
    </div>



    <x-pin-items-filtered-list :pins="$pins" :pins-data="$pinsData" />

    @include('pinSection@pinItem::includes.filtered_pins_hide_modal_resources')

</x-laradrom-layout>



