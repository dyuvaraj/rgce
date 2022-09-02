<?php

namespace App\Http\Livewire\Frontend;

use Livewire\Component;

class ManagementFeComponent extends Component
{
    public function render()
    {
        return view('livewire.frontend.management-fe-component')
        ->layout('livewire.layouts.app');
    }
}
