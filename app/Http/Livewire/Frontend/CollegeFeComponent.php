<?php

namespace App\Http\Livewire\Frontend;

use Livewire\Component;

class CollegeFeComponent extends Component
{
    public function render()
    {
        return view('livewire.frontend.college-fe-component')
        ->layout('livewire.layouts.app');
    }
}
