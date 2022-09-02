<?php

namespace App\Http\Livewire\Frontend;

use App\Models\Gallery;
use Livewire\Component;

class GalleryFeComponent extends Component
{
    public function render()
    {
        $galleries = Gallery::all(); 
        return view('livewire.frontend.gallery-fe-component', ['galleries' => $galleries ] )
        ->layout('livewire.layouts.app');
    }
}
