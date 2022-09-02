<?php

namespace App\Http\Livewire;

use App\Models\Gallery;
use App\Models\GalleryImage;
use Livewire\Component;

use Livewire\WithFileUploads;

class GalleryComponent extends Component
{
    use WithFileUploads;

    public $gallery_id, $title, $description, $gallery_image, $gallery_image_src, $highlight, $status;

    public $submit_btn = 'Add';
    public $submit = 'store';
    public $upload_path = 'gallery_image';

    public function updated ($fields) {

        $this->validateOnly($fields,[
            'title' => 'required',
            'description' => 'required',
            'gallery_image' => 'image'
        ]);        
    }
    
    public function render()
    {
        $galleries = Gallery::paginate(10);
        return view('livewire.gallery-component', ['galleries' => $galleries])
                    ->layout('livewire.layouts.base');
    }

    public function edit($gallery_id) {
        $galleries = Gallery::find($gallery_id);
        $this->gallery_id = $galleries->id;
        $this->title = $galleries->title;
        $this->description = $galleries->description;
        // $this->gallery_image = $galleries->gallery_image;
        $this->gallery_image_src = $galleries->gallery_image;
        $this->highlight = $galleries->highlight;

        $this->submit_btn = "Update";
        $this->submit = "update";
    }

    public function update() {

        $this->validate([
            'title' => 'required',
            // 'description' => 'required',
        ]);  

        $galleries = Gallery::find($this->gallery_id);

        $galleries->title = $this->title;
        $galleries->description = $this->description;
        // $galleries->gallery_image = $this->gallery_image;
        $galleries->highlight = $this->highlight;

        if( isset($this->gallery_image) && $this->gallery_image != null ) {
            if(file_exists(storage_path('app/public/'.$galleries->gallery_image)) && $galleries->gallery_image != ''){            
                unlink(storage_path('app/public/'.$galleries->gallery_image));
            }
            
            $galleries->gallery_image = ($this->gallery_image->store($this->upload_path, 'public'));  
        }   

        if (!$galleries->save()) {
            session()->flash('message', 'Gallery not updated');
            return;
        }

        $this->submit_btn = "Add";
        $this->submit = "store";
        $this->resetFields();
        session()->flash('message', 'Gallery Updated Successfully');        
    }

    public function update_status($gallery_id, $status) {       

        $galleries = Gallery::find($gallery_id);
        $galleries->status = ($status) ? 0 : 1;

        if (!$galleries->save()) {
            session()->flash('message', 'Gallery Status not updated');
            return;
        }
    }

    public function resetFields() {
        $this->gallery_id = '';
        $this->title = '';
        $this->description = '';
        $this->gallery_image = '';
    }

    public function store() {
        $galleries = new Gallery();
        $galleries->title = $this->title;
        $galleries->description = $this->description;
        $galleries->highlight = $this->highlight;
        $galleries->status = 1;

        if( isset($this->gallery_image) && $this->gallery_image != null ) {
            $galleries->gallery_image = $this->gallery_image->store($this->upload_path, 'public');     
        }

        if (!$galleries->save()) {
            session()->flash('message', 'Gallery not added');
            return;
        }

        $this->resetFields();
        session()->flash('message', 'Gallery Added Successfully');
     }

     public function delete($id) {
        $galleries = Gallery::find($id);
        
        if(file_exists(storage_path('app/public/'.$galleries->gallery_image))){            
            unlink(storage_path('app/public/'.$galleries->gallery_image));
        }

        $galleries->gallery_image = '';

        $galleries->delete();        
        session()->flash('message', 'Gallery Deleted');
    }
}
