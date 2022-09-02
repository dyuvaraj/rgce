<?php

namespace App\Http\Livewire;

use App\Models\Course;
use Livewire\Component;

use Livewire\WithFileUploads;
use Livewire\WithPagination;

class CourseComponent extends Component
{
    use WithFileUploads;
    use WithPagination;

    public $degree_type = ['B.E', 'B.TECH', 'M.E', 'M.TECH', 'Ph.d'];
    public $course_id, $degree, $specialization, $description, $spec_image, $spec_image_src, $special_mention, $special_description;
    
    public $submit = 'store';
    public $submit_btn = 'Add';
    public $upload_path = 'course_images';

    public function updated ($fields) {

        $this->validateOnly($fields,[
            'degree' => 'required',
            'specialization' => 'required',
            'description' => 'required',
            'spec_image' => 'image'
        ]);        
    }

    public function resetFields() {
        $this->degree = '';
        $this->specialization = '';
        $this->description = '';
        $this->spec_image = '';
        $this->special_mention = '';
        $this->special_description = '';
    }

    public function render()
    {
        $courses = Course::paginate(10);
        return view('livewire.course-component', ['courses' => $courses, 'degree_type' => $this->degree_type])
                    ->layout('livewire.layouts.base');
    }

    public function store() { 
        $courses = new Course();
        $courses->degree = $this->degree;
        $courses->specialization = $this->specialization;
        $courses->description = $this->description;
        $courses->special_mention = $this->special_mention;
        $courses->special_description = $this->special_description;
        $courses->status = 1;

        if( isset($this->spec_image) && $this->spec_image != null ) {
            $courses->spec_image = $this->spec_image->store($this->upload_path, 'public');       
        }        

        if (!$courses->save()) {
            session()->flash('message', 'Course not added');
            return;
        }

        $this->resetFields();
        session()->flash('message', 'Course Added Successfully');
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
        $this->resetFields();
        session()->flash('message', 'Course Updated Successfully');        
    }

    public function update_status($course_id, $status) {       

        $courses = Course::find($course_id);
        $courses->status = ($status) ? 0 : 1;

        if (!$courses->save()) {
            session()->flash('message', 'Course Status not updated');
            return;
        }       
    }

    public function delete($id) {
        $courses = Course::find($id);
        
        if(file_exists(storage_path('app/public/'.$courses->spec_image))){            
            unlink(storage_path('app/public/'.$courses->spec_image));
        }

        $courses->spec_image = '';

        $courses->delete();        
        session()->flash('message', 'Course Deleted');
    }
}
