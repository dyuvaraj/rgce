<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Course;
use App\Models\CourseImage;

use Livewire\WithFileUploads;

class CourseImageComponent extends Component
{
    use WithFileUploads;

    public $course_id, $course_image_id, $course_banner;
    public $course_image = [];
    public $submit = 'store';
    public $upload_path = 'course_images';

    public function updated ($fields) {

        $this->validateOnly($fields,[
            'course_image.*' => 'image'
        ]);        
    }

    public function store() {        
    
        foreach ($this->course_image as $photo) {
            
            $course_images = new CourseImage();
            $course_images->course_id = $this->course_id;
            $course_images->course_banner = $this->course_banner;
            $course_images->status = 1;
            $course_images->course_image = ($photo->store($this->upload_path, 'public'));
            
            if (!$course_images->save()) {
                session()->flash('message', 'Course Images not added');
                return;
            }
        }
        $this->resetFields();
        session()->flash('message', 'Course Images Added Successfully');
     }

     public function resetFields() {
        $this->course_id = '';
        $this->description = '';
        $this->course_image = [];
    }

    public function render()
    {
        $courses = Course::all();
        $course_images = CourseImage::paginate(10);
        return view('livewire.course-image-component', ['courses' => $courses, 'course_images' => $course_images])
                    ->layout('livewire.layouts.base');
    }
}
