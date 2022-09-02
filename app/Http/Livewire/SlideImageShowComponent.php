<?php

namespace App\Http\Livewire;

use Livewire\Component;

use App\Models\Slides;
use App\Models\SlideImages;

use Livewire\WithFileUploads;
use Livewire\WithPagination;

class SlideImageShowComponent extends Component
{
    use WithFileUploads;
    use WithPagination;

    protected $paginationTheme = 'bootstrap';

    public $slide_id, $slide_image_id, $title, $description, $status, $slide_image;

    public function mount($slide_id)
    { 
        $this->slide_id = $slide_id;
    }

    public function render()
    {
        $slides = Slides::all();
        $slide_images = SlideImages::where('slide_id', $this->slide_id)->paginate(10);

        return view('livewire.slide-image-show-component', ['slides' => $slides, 'slide_images' => $slide_images])
                    ->layout('livewire.layouts.base');
    }

    public function resetFields() {
        $this->slide_image_id = '';
        $this->title = '';
        $this->description = '';
        $this->status = '';
    }

    public function update_status($id, $status) {       

        $slide_images = SlideImages::find($id);
        $slide_images->status = ($status) ? 0 : 1;

        if (!$slide_images->save()) {
            session()->flash('message', 'Slide Image Status not updated');
            return;
        }       
    }

    public function edit($id) {

        $slide_images = SlideImages::find($id);
        $this->slide_image_id = $slide_images->id;
        $this->title = $slide_images->title;
        $this->description = $slide_images->description;
    }

    public function update() {

        $slide_images = SlideImages::find($this->slide_image_id);
        $slide_images->title = $this->title;
        $slide_images->description = $this->description;
       
        if (!$slide_images->save()) {
            session()->flash('message', 'Slide Image not updated');
            return;
        }

        $this->resetFields();
        session()->flash('message', 'Slide Image Updated');        
    }
    
    public function delete($id) {

        $slide_images = SlideImages::find($id);
        
        if(file_exists(storage_path('app/public/'.$slide_images->slide_image))){            
            unlink(storage_path('app/public/'.$slide_images->slide_image));
        }

        if (!$slide_images->delete()) {
            session()->flash('message', 'Slide Image not deleted');
            return;
        }
        session()->flash('message', 'Slide Image Deleted');
    }
}
