<?php

namespace App\Http\Livewire\Frontend;

use App\Models\GalleryImage;
use App\Models\Gallery;
use Livewire\Component;

class GalleryImageFeComponent extends Component
{
    public $gallery_id;

    public function mount($id)
    { 
        $this->gallery_id = $id;
    }

    public function render()
    {
        $galleries = Gallery::find($this->gallery_id);
        $gallery_images = GalleryImage::where('gallery_id', $this->gallery_id)->get();

        return view('livewire.frontend.gallery-image-fe-component', ['gallery_images' => $gallery_images,'galleries' => $galleries])
        ->layout('livewire.layouts.app');
    }
}
