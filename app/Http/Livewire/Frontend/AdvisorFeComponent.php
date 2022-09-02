<?php

namespace App\Http\Livewire\Frontend;

use Livewire\Component;

class AdvisorFeComponent extends Component
{
    public function render()
    {
        return view('livewire.frontend.advisor-fe-component')->layout('livewire.layouts.app');
    }
}
