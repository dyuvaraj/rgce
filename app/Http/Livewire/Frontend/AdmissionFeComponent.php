<?php

namespace App\Http\Livewire\Frontend;

use Livewire\Component;

class AdmissionFeComponent extends Component
{
    public function render()
    {
        return view('livewire.frontend.admission-fe-component')->layout('livewire.layouts.app');
    }
}
