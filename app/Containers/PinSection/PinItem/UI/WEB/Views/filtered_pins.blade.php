<x-laradrom-layout :layout-pintype-slug="$pinTypeSlug">

    <x-stack-items-menu :stack-items="$pinsData['stackItems']" :stack-item-slug="$stackItemSlug" :pin-type-slug="$pinTypeSlug"/>

    <x-filtered-pins-header :page-header="$pageHeader" />

    <x-pin-items-filtered-list :pins="$pins" :pins-data="$pinsData" />

    @include('pinSection@pinItem::includes.filtered_pins_hide_modal_resources')

</x-laradrom-layout>



