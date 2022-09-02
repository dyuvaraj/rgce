<?php

namespace App\Http\Livewire\Frontend;

use Livewire\Component;

class AmenitiesFeComponent extends Component
{
    public function render()
    {
        return view('livewire.frontend.amenities-fe-component')->layout('livewire.layouts.app');
    }
}
