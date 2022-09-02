<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Course;
use App\Models\CourseImage;

use Livewire\WithFileUploads;

class CourseEditComponent extends Component
{
    use WithFileUploads;

    protected $paginationTheme = 'bootstrap';

    public $submit = 'store';
    public $submit_btn = 'Add';
    public $upload_path = 'course_images';

    public $degree_type = ['B.E', 'M.E', 'Ph.d'];
    public $course_id, $degree, $specialization, $description, $spec_image, $spec_image_src, $special_mention, $special_description;


    public function mount($id)
    { 
        $this->edit($id);
    }


    public function render()
    {
        $courses = Course::find($this->course_id);

        return view('livewire.course-edit-component', ['courses' => $courses])
        ->layout('livewire.layouts.base');;
    }

    public function edit($id) {
        $courses = Course::find($id);
        $this->course_id = $courses->id;
        $this->degree = $courses->degree;
        $this->specialization = $courses->specialization;
        $this->description = $courses->description;
        $this->special_mention = $courses->special_mention;
        $this->special_description = $courses->special_description;

        $this->submit_btn = "Update";
        $this->submit = "update";
    }

    public function update() {

        $this->validate([
            'degree' => 'required',
            'specialization' => 'required',
            'description' => 'required',
            // 'spec_image' => 'image'
        ]);  

        $courses = Course::find($this->course_id);

        $courses->degree = $this->degree;
        $courses->description = $this->description;
        $courses->specialization = $this->specialization;
        $courses->description = $this->description;
        $courses->special_mention = $this->special_mention;
        $courses->special_description = $this->special_description;

        if( isset($this->spec_image) && $this->spec_image != null ) {
            if(file_exists(storage_path('app/public/'.$courses->spec_image)) && $courses->spec_image != ''){
                unlink(storage_path('app/public/'.$courses->spec_image));
            }
            
            $courses->spec_image = ($this->spec_image->store($this->upload_path, 'public'));  
        }        

        if (!$courses->save()) {
            session()->flash('message', 'Course not updated');
            return;
        }

        $this->submit = "store";
        // $this->resetFields();
        session()->flash('message', 'Course Updated Successfully');        
    }
}
