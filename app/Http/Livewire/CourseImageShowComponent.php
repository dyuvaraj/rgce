<?php

namespace App\Http\Livewire;

use Livewire\Component;

use App\Models\Course;
use App\Models\CourseImage;

use Livewire\WithFileUploads;
use Livewire\WithPagination;

class CourseImageShowComponent extends Component
{
    use WithFileUploads;
    use WithPagination;

    protected $paginationTheme = 'bootstrap';

    public $course_id, $course_image_id, $description, $status, $course_image, $course_banner;
    public $upload_path = 'course_images';

    public function mount($course_id)
    { 
        $this->course_id = $course_id;
    }

    public function render()
    {
        $courses = Course::all();
        $course_images = CourseImage::where('course_id', $this->course_id)->paginate(10);

        return view('livewire.course-image-show-component', ['courses' => $courses, 'course_images' => $course_images])
                    ->layout('livewire.layouts.base');
    }

    public function resetFields() {
        $this->course_image_id = '';
        $this->description = '';
        $this->status = '';
    }

    public function update_status($id, $status) {       

        $course_images = CourseImage::find($id);
        $course_images->status = ($status) ? 0 : 1;

        if (!$course_images->save()) {
            session()->flash('message', 'Course Image Status not updated');
            return;
        }       
    }

    public function edit($id) {

        $course_images = CourseImage::find($id);
        $this->course_image_id = $course_images->id;
        $this->description = $course_images->description;        
        $this->course_banner = $course_images->course_banner;    
    }

    public function update() {

        $this->validate([
            'description' => 'required'
        ]);

        $course_images = CourseImage::find($this->course_image_id);
        $course_images->description = $this->description;
        $course_images->course_banner = $this->course_banner;
       
        if (!$course_images->save()) {
            session()->flash('message', 'Course Image not updated');
            return;
        }

        $this->resetFields();
        session()->flash('message', 'Course Image Updated');        
    }

    public function delete($id) {

        $course_images = CourseImage::find($id);
        
        if(file_exists(storage_path('app/public/'.$course_images->course_image))){            
            unlink(storage_path('app/public/'.$course_images->course_image));
        }

        if (!$course_images->delete()) {
            session()->flash('message', 'Course Image not deleted');
            return;
        }
        session()->flash('message', 'Course Image Deleted');
    }
}
