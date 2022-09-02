<?php

namespace App\Http\Livewire\Frontend;

use Livewire\Component;

class ContactusFeComponent extends Component
{
    public function render()
    {
        return view('livewire.frontend.contactus-fe-component')->layout('livewire.layouts.app');
    }
}
