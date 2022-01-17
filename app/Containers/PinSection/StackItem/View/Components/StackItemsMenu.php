<?php

namespace App\Containers\PinSection\StackItem\View\Components;

use Illuminate\View\Component;

class StackItemsMenu extends Component
{
    public $stackItems;
    public $stackItemSlug;
    public $pinTypeSlug;

    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct(/**/$stackItems, $stackItemSlug, $pinTypeSlug/**/)
    {
        $this->stackItems = $stackItems;
        $this->stackItemSlug = $stackItemSlug;
        $this->pinTypeSlug = $pinTypeSlug;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        //dd($this->attributes);
        return view('pinSection@stackItem::components.stack-items-menu');
    }

    public function test() {
        return 'test';
    }
}
