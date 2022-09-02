<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Placement;
use App\Models\Course;
use App\Models\PlacementCompany;

class PlacementEditComponent extends Component
{

    public $submit = 'store';
    public $submit_btn = 'Add';

    public $placement_id, $placement_year, $course, $students_placed, $companies=[], $status;

    public function mount($id)
    { 
        $this->edit($id);
    }

    public function render()
    {
        $courses = Course::all();
        $placement_companies = PlacementCompany::all();
        return view('livewire.placement-edit-component', ['placement_companies' => $placement_companies, 'courses' => $courses])->layout('livewire.layouts.base');
    }

    public function edit($id) {

        $placements = Placement::find($id);
        $this->placement_id = $placements->id;
        $this->placement_year = $placements->placement_year;
        $this->course = $placements->course;
        $this->students_placed = $placements->students_placed;
        $this->companies = unserialize($placements->companies);
        // dd($this->companies);
        $this->submit_btn = "Update";
        $this->submit = "update";
    }

    public function update() {

        $this->validate([
            'placement_year' => 'required',
            'course' => 'required',
            'students_placed' => 'required'
        ]);

        $placements = Placement::find($this->placement_id);

        $placements->placement_year = $this->placement_year;
        $placements->course = $this->course;
        $placements->students_placed = $this->students_placed;
        $placements->companies = serialize($this->companies);

        if (!$placements->save()) {
            session()->flash('message', 'Placement not updated');
            return;
        }

        $this->submit_btn = "Add";
        $this->submit = "store";
        // $this->resetFields();

        session()->flash('message', 'Placement Updated');        
    }
}
