<?php

namespace App\Http\Livewire;

use App\Models\Course;
use Livewire\Component;

use App\Models\UniversityRankers;
use Livewire\WithFileUploads;
use Livewire\WithPagination;

class UniversityRankersComponent extends Component
{
    use WithFileUploads;
    use WithPagination;

    protected $paginationTheme = 'bootstrap';

    public $submit = 'store';
    public $submit_btn = 'Add';
    public $upload_path = 'student_images';

    public $ur_id, $student_id, $student_name, $student_image, $student_image_src, $course, $year, $percentage, 
           $rank, $university, $highlight, $status;

    public function updated ($fields) {

        $this->validateOnly($fields,[
            'student_name' => 'required',
            'student_image' => 'required',
            'course' => 'required',
            'year' => 'required',
            // 'percentage' => 'required',
            // 'rank' => 'required'
        ]);        
     }
    
    public function render()
    {
        $courses = Course::all();
        $university_rankers = UniversityRankers::paginate(10);
        return view('livewire.university-rankers-component', ['university_rankers' => $university_rankers, 'courses' => $courses])
        ->layout('livewire.layouts.base');
    }

    public function resetFields() {
        $this->ur_id = '';
        $this->student_id = '';
        $this->student_name = '';
        $this->student_image = '';
        $this->course = '';
        $this->year = '';
        // $this->percentage ='';
        // $this->rank = '';
        $this->university = '';        
        $this->highlight = 0;
    }

    public function store() {

        $university_rankers = new UniversityRankers();
        $university_rankers->student_id = $this->student_id;
        $university_rankers->student_name = $this->student_name;
        $university_rankers->course = $this->course;
        $university_rankers->year = $this->year;
        $university_rankers->percentage = $this->percentage;
        $university_rankers->rank = $this->rank;
        $university_rankers->university = $this->university;
        $university_rankers->highlight = $this->highlight;
        $university_rankers->status = 1;

        if( isset($this->student_image) && $this->student_image != null ) {
            $university_rankers->student_image = ($this->student_image->store($this->upload_path, 'public'));
        }        

        if (!$university_rankers->save()) {
            session()->flash('message', 'University Rankers not added');
            return;
        }

        $this->resetFields();
        session()->flash('message', 'University Rankers Added');
    }

    public function update_status($id, $status) {       

        $university_rankers = UniversityRankers::find($id);
        $university_rankers->status = ($status) ? 0 : 1;

        if (!$university_rankers->save()) {
            session()->flash('message', 'University Rankers Status not updated');
            return;
        }       
    }

    public function edit($id) {

        $university_rankers = UniversityRankers::find($id);
        $this->ur_id = $university_rankers->ur_id;
        $this->student_id = $university_rankers->student_id;
        $this->student_name = $university_rankers->student_name;
        $this->course = $university_rankers->course;
        $this->year = $university_rankers->year;
        $this->percentage = $university_rankers->percentage;
        $this->rank = $university_rankers->rank;
        $this->university = $university_rankers->university;
        $this->highlight = $university_rankers->highlight;
        
        $this->submit_btn = "Update";
        $this->submit = "update";
    }

    public function update() {

        $this->validate([
            'student_name' => 'required',
            'student_image' => 'required',
            'course' => 'required',
            'year' => 'required',
            // 'percentage' => 'required',
            // 'rank' => 'required'
        ]);

        $university_rankers = UniversityRankers::find($this->ur_id);

        $university_rankers->company_name = $this->company_name;
        $university_rankers->student_id = $this->student_id;
        $university_rankers->student_name = $this->student_name;
        $university_rankers->course = $this->course;
        $university_rankers->year = $this->year;
        $university_rankers->percentage = $this->percentage;
        $university_rankers->rank = $this->rank;
        $university_rankers->university = $this->university;
        $university_rankers->highlight = $this->highlight;

        if( isset($this->student_image) && $this->student_image != null ) {
            if(file_exists(storage_path('app/public/'.$university_rankers->student_image)) && $university_rankers->student_image != ''){
                unlink(storage_path('app/public/'.$university_rankers->student_image));
            }
            
            $university_rankers->student_image = ($this->student_image->store($this->upload_path, 'public'));  
        }        
        
        if (!$university_rankers->save()) {
            session()->flash('message', 'University Rankers not updated');
            return;
        }

        $this->student_image_src = '';
        $this->submit_btn = "Add";
        $this->submit = "store";
        $this->resetFields();

        session()->flash('message', 'University Rankers Updated');        
    }

    public function delete_image($id) {

        $university_rankers = UniversityRankers::find($id);
        
        if(file_exists(storage_path('app/public/'.$university_rankers->student_image))){            
            unlink(storage_path('app/public/'.$university_rankers->student_image));
        }

        $university_rankers->student_image = '';
        $this->student_image_src = '';
        $this->student_image = '';

        if (!$university_rankers->save()) {
            session()->flash('message', 'University Rankers Image not deleted');
            return;
        }
        session()->flash('message', 'University Rankers Image Deleted');
    }

    public function delete($id) {

        $university_rankers = UniversityRankers::find($id);
        
        if(file_exists(storage_path('app/public/'.$university_rankers->student_image))){            
            unlink(storage_path('app/public/'.$university_rankers->student_image));
        }

        $university_rankers->student_image = '';

        $university_rankers->delete();   

        session()->flash('message', 'University Rankers Deleted');
    }    
}
