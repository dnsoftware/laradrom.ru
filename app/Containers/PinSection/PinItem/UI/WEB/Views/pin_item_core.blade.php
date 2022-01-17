<h2 class="text-xl">{{$pinitem->title}}</h2>

<div class="my-8">

    <div class="pin-article">
    {!! $pinitem->content!!}
    </div>

    <x-pin-item-target-link :target-link="$pinitem->target_link" />

</div>


<style>
    .pin-article p {
        margin: 10px 0 10px 0;
    }

    .pin-article {
        font-size: 14px;
    }

    .pin-article a{
        font-size: 14px;
        text-decoration: underline;
    }
    .pin-article a:hover{
        text-decoration: none;
    }
</style>
