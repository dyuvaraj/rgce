<?php

namespace App\Http\Livewire\Frontend;

use Livewire\Component;

class PrincipalFeComponent extends Component
{
    public function render()
    {
        return view('livewire.frontend.principal-fe-component')->layout('livewire.layouts.app');
    }
}
