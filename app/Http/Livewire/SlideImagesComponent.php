<?php

namespace App\Http\Livewire;

use Livewire\Component;

use App\Models\Slides;
use App\Models\SlideImages;

use Livewire\WithFileUploads;
use Livewire\WithPagination;

class SlideImagesComponent extends Component
{
    use WithFileUploads;
    use WithPagination;

    protected $paginationTheme = 'bootstrap';

    public $submit = 'store';
    public $upload_path = 'slide_images';

    public $slide_id, $slide_image_id, $title, $description, $status;
    public $slide_image = [];    

    public function render()
    {
        $slides = Slides::all();
        $slide_images = SlideImages::paginate(10);
        return view('livewire.slide-images-component', ['slides' => $slides, 'slide_images' => $slide_images])
                ->layout('livewire.layouts.base');
    }

    public function resetFields() {

        $this->slide_id = '';
        $this->title = '';
        $this->description = '';
        $this->slide_image = [];
    }

    public function store() {        
    
        foreach ($this->slide_image as $photo) {
            
            $slide_images = new SlideImages();
            $slide_images->slide_id = $this->slide_id;
            $slide_images->status = 1;
            $slide_images->slide_image = ($photo->store($this->upload_path, 'public'));
            
            if (!$slide_images->save()) {
                session()->flash('message', 'Slide Images not added');
                return;
            }
        }
        $this->resetFields();
        session()->flash('message', 'Slide Images Added Successfully');
     }
}
