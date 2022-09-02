<?php

namespace App\Http\Livewire\Frontend;

use Livewire\Component;

class CouncilFeComponent extends Component
{
    public function render()
    {
        return view('livewire.frontend.council-fe-component')->layout('livewire.layouts.app');
    }
}
