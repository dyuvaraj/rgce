<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Gallery;
use App\Models\GalleryImage;

use Livewire\WithFileUploads;

class GalleryImageComponent extends Component
{
    use WithFileUploads;

    public $gallery_id, $gallery_image_id;
    public $gallery_image = [];
    public $submit = 'store';

    public function updated ($fields) {

        $this->validateOnly($fields,[
            'gallery_image.*' => 'image'
        ]);        
    }

    public function render()
    {
        $galleries = Gallery::all();
        $gallery_images = GalleryImage::paginate(10);
        return view('livewire.gallery-image-component', ['galleries' => $galleries, 'gallery_images' => $gallery_images])
                    ->layout('livewire.layouts.base');
    }

    public function store() {        
    
        foreach ($this->gallery_image as $photo) {
            
            $gallery_images = new GalleryImage();
            $gallery_images->gallery_id = $this->gallery_id;
            $gallery_images->status = 1;
            $gallery_images->gallery_image = ($photo->store('gallery_image/'.$this->gallery_id, 'public'));
            
            if (!$gallery_images->save()) {
                session()->flash('message', 'Gallery Images not added');
                return;
            }
        }
        $this->resetFields();
        session()->flash('message', 'Gallery Images Added Successfully');
     }

     public function resetFields() {
        $this->gallery_id = '';
        $this->description = '';
        $this->gallery_image = [];
    }
}
