<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Slides;

use Livewire\WithPagination;

class SlidesComponent extends Component
{
    use WithPagination;

    protected $paginationTheme = 'bootstrap';    

    public $submit = 'store';
    public $submit_btn = 'Add';

    public $slide_id, $slide_name, $status;

    public function updated ($fields) {

        $this->validateOnly($fields,[
            'slide_name' => 'required'
        ]);        
    }
    
    public function resetFields() {
        $this->slide_name = '';
    }

    public function render()
    {
        $slides = Slides::paginate(10);
        return view('livewire.slides-component', ['slides' => $slides])
                ->layout('livewire.layouts.base');
    }

    public function store() {
        $slides = new Slides();
        $slides->slide_name = $this->slide_name;
        $slides->status = 1;

        if (!$slides->save()) {
            session()->flash('message', 'Slide not added');
            return;
        }

        $this->resetFields();
        session()->flash('message', 'Slide Added Successfully');
    }


    public function edit($id) {
        $slides = Slides::find($id);
        $this->slide_id = $slides->id;
        $this->slide_name = $slides->slide_name;

        $this->submit_btn = "Update";
        $this->submit = "update";
    }

    public function update() {

        $this->validate([
            'slide_name' => 'required',
        ]);  

        $slides = Slides::find($this->slide_id);
        $slides->slide_name = $this->slide_name;

        if (!$slides->save()) {
            session()->flash('message', 'Slides not updated');
            return;
        }

        $this->submit = "store";
        $this->resetFields();
        session()->flash('message', 'Slides Updated Successfully');        
    }

    public function update_status($slide_id, $status) {       

        $slides = Slides::find($slide_id);
        $slides->status = ($status) ? 0 : 1;

        if (!$slides->save()) {
            session()->flash('message', 'Slides Status not updated');
            return;
        }
    }

    public function delete($id) {

        $slides = Slides::find($id);        
        $slides->delete();
        
        session()->flash('message', 'Slides Deleted');
    }
}
