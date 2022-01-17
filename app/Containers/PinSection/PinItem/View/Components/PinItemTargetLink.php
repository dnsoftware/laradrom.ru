<?php

namespace App\Containers\PinSection\PinItem\View\Components;

use Illuminate\View\Component;

class PinItemTargetLink extends Component
{
    public $targetLink;
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct(?string $targetLink)
    {
        $this->targetLink = $targetLink;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('pinSection@pinItem::components.pin-item-target-link');
    }

}
