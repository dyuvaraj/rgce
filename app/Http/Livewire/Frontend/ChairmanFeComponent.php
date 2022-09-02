<?php

namespace App\Http\Livewire\Frontend;

use Livewire\Component;

class ChairmanFeComponent extends Component
{
    public function render()
    {
        return view('livewire.frontend.chairman-fe-component')->layout('livewire.layouts.app');
    }
}
