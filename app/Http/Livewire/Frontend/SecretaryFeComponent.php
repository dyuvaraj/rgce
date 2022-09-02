<?php

namespace App\Http\Livewire\Frontend;

use Livewire\Component;

class SecretaryFeComponent extends Component
{
    public function render()
    {
        return view('livewire.frontend.secretary-fe-component')->layout('livewire.layouts.app');
    }
}
