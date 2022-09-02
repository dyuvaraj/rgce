<?php

namespace App\Http\Livewire\Frontend;

use App\Models\Course;
use Livewire\Component;

class CourseFeComponent extends Component
{
    public $course;

    public function mount($course)
    { 
        $this->course = $course;
    }
    
    public function render()
    {
        $type = '';
        if ($this->course == 'ug') {
            $type = ['B.E', 'B.Tech'];
        } else if ($this->course == 'pg') {
            $type = ['M.E'];
        }

        $courses = Course::whereIn('degree', $type)->get(); 
        return view('livewire.frontend.course-fe-component', ['courses' => $courses, 'type' => $this->course ] )
        ->layout('livewire.layouts.app');
    }
}
