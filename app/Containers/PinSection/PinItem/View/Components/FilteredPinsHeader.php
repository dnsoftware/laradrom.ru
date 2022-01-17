<?php

namespace App\Containers\PinSection\PinItem\View\Components;

use Illuminate\View\Component;

class FilteredPinsHeader extends Component
{
    public $pageHeader;

    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct(string $pageHeader)
    {
        $this->pageHeader = $pageHeader;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        if ($this->pageHeader) {
            return view('pinSection@pinItem::components.filtered-pins-header');
        }

    }
}
