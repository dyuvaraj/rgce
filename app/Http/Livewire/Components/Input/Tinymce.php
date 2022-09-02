<?php

namespace App\Http\Livewire\Components\Input;

use Livewire\Component;

class Tinymce extends Component
{
    public $description;

    public function mount($description)
    {
        $this->description = $description;
    }

    public function render()
    {
        return view('livewire.components.input.tinymce');
    }
}
