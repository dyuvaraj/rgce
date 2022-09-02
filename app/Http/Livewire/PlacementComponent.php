<?php

namespace App\Http\Livewire;

use Livewire\Component;

use App\Models\Placement;
use App\Models\Course;
use App\Models\PlacementCompany;
use Livewire\WithPagination;

class PlacementComponent extends Component
{
    use WithPagination;

    protected $paginationTheme = 'bootstrap';

    public $submit = 'store';
    public $submit_btn = 'Add';
    
    public $placement_id, $placement_year, $course, $students_placed, $companies=[], $status;

    public function updated ($fields) {

        $this->validateOnly($fields,[
            'placement_year' => 'required',
            'students_placed' => 'required',
            'companies' => 'required'
        ]);        
    }

    public function render()
    {
        $courses = Course::all();
        $placement_companies = PlacementCompany::all();
        $placements = Placement::paginate(10);
        return view('livewire.placement-component', ['placements' => $placements, 'courses' => $courses, 'placement_companies' => $placement_companies])
                ->layout('livewire.layouts.base');
    }

    public function resetFields() {
        $this->placement_id = '';
        $this->placement_year = '';
        $this->course = '';
        $this->students_placed = '';
        // $this->companies = [];
    }

    public function store() {

        $placements = new Placement();
        $placements->placement_year = $this->placement_year;
        $placements->course = $this->course;
        $placements->students_placed = $this->students_placed;
        $placements->companies = serialize($this->companies);
        $placements->status = 1;

        if (!$placements->save()) {
            session()->flash('message', 'Placement not added');
            return;
        }

        $this->resetFields();
        session()->flash('message', 'Placement Added');
    }

    public function update_status($id, $status) {       

        $placements = Placement::find($id);
        $placements->status = ($status) ? 0 : 1;

        if (!$placements->save()) {
            session()->flash('message', 'Placement Status not updated');
            return;
        }       
    }

    public function edit($id) {

        $placements = Placement::find($id);
        $this->placement_id = $placements->id;
        $this->placement_year = $placements->placement_year;
        $this->course = $placements->course;
        $this->students_placed = $placements->students_placed;
        $this->companies = $placements->companies;
        
        $this->submit_btn = "Update";
        $this->submit = "update";
    }

    public function update() {

        $this->validate([
            'company_name' => 'required',
            'description' => 'required',
            'company_image' => 'image'
        ]);

        $placements = Placement::find($this->placement_id);

        $placements->placement_year = $this->placement_year;
        $placements->course = $this->course;
        $placements->students_placed = $this->students_placed;
        $placements->companies = $this->companies;

        if (!$placements->save()) {
            session()->flash('message', 'Placement not updated');
            return;
        }

        $this->submit_btn = "Add";
        $this->submit = "store";
        $this->resetFields();

        session()->flash('message', 'Placement Updated');        
    }

    public function delete($id) {

        $placements = Placement::find($id);
        $placements->delete();   

        session()->flash('message', 'Placement Deleted');
    }   
}
