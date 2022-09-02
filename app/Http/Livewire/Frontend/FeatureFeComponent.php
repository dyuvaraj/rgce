<?php

namespace App\Http\Livewire\Frontend;

use Livewire\Component;

class FeatureFeComponent extends Component
{
    public function render()
    {
        return view('livewire.frontend.feature-fe-component')->layout('livewire.layouts.app');
    }
}
