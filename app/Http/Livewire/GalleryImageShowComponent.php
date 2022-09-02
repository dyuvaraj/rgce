<?php

namespace App\Http\Livewire;

use Livewire\Component;

use App\Models\Gallery;
use App\Models\GalleryImage;

use Livewire\WithFileUploads;
use Livewire\WithPagination;

class GalleryImageShowComponent extends Component
{
    use WithFileUploads;
    use WithPagination;

    protected $paginationTheme = 'bootstrap';

    public $gallery_id, $gallery_image_id, $description, $status;

    public function mount($gallery_id)
    { 
        $this->gallery_id = $gallery_id;
    }
    
    public function render()
    {
        $galleries = Gallery::all();
        $gallery_images = GalleryImage::where('gallery_id', $this->gallery_id)->paginate(10);

        return view('livewire.gallery-image-show-component', ['galleries' => $galleries, 'gallery_images' => $gallery_images])
                ->layout('livewire.layouts.base');
    }

    public function resetFields() {
        $this->gallery_image_id = '';
        $this->description = '';
        $this->status = '';
    }

    public function update_status($id, $status) {       

        $gallery_images = GalleryImage::find($id);
        $gallery_images->status = ($status) ? 0 : 1;

        if (!$gallery_images->save()) {
            session()->flash('message', 'Gallery Image Status not updated');
            return;
        }       
    }

    public function edit($id) {
        $gallery_images = GalleryImage::find($id);
        $this->gallery_image_id = $gallery_images->id;
        $this->description = $gallery_images->description;
        $this->dispatchBrowserEvent('rendertinymce');
    }

    public function update() {

        $this->validate([
            'description' => 'required'
        ]);

        $gallery_images = GalleryImage::find($this->gallery_image_id);

        $gallery_images->description = $this->description;
       
        if (!$gallery_images->save()) {
            session()->flash('message', 'Gallery Image not updated');
            return;
        }

        $this->resetFields();
        session()->flash('message', 'Gallery Image Updated');        
    }

    public function delete($id) {

        $gallery_images = GalleryImage::find($id);
        
        if(file_exists(storage_path('app/public/'.$gallery_images->gallery_image))){            
            unlink(storage_path('app/public/'.$gallery_images->gallery_image));
        }

        if (!$gallery_images->delete()) {
            session()->flash('message', 'Gallery Image not deleted');
            return;
        }
        session()->flash('message', 'Gallery Image Deleted');
    }
}
