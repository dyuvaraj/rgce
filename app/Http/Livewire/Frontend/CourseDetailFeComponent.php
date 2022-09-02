<?php

namespace App\Http\Livewire\Frontend;

use App\Models\Course;
use App\Models\CourseImage;
use Livewire\Component;

class CourseDetailFeComponent extends Component
{

    public $course_id;

    public function mount($id)
    { 
        $this->course_id = $id;
    }

    public function render()
    {
        $courses = Course::find($this->course_id);
        $course_images = CourseImage::where([['course_id', $this->course_id], ['course_banner', '!=', 1]])->get(); 
        $course_banner_images = CourseImage::where([['course_id', $this->course_id], ['course_banner', '=', 1]])->get(); 
        return view('livewire.frontend.course-detail-fe-component', ['course_images' => $course_images, 'courses' => $courses, 'course_banner_images'=>$course_banner_images])
        ->layout('livewire.layouts.app');
    }
}
