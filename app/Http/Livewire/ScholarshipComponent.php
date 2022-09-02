<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Scholarship;

use Livewire\WithPagination;

class ScholarshipComponent extends Component
{
    use WithPagination;

    protected $paginationTheme = 'bootstrap';

    public $submit = 'store';
    public $submit_btn = 'Add';

    public $scholarship_id, $scholarship_name, $description, $amount, $address, $castes = [], $highlight, $status;

    public function updated ($fields) {

        $this->validateOnly($fields,[
            'scholarship_name' => 'required',
            'description' => 'required'
        ]);        
     }
    
    public function render()
    {
        $scholarships = Scholarship::paginate(10);
        return view('livewire.scholarship-component', ['scholarships' => $scholarships])
                ->layout('livewire.layouts.base');
    }

    public function edit($id) {
        $scholarships = Scholarship::find($id);
        $this->scholarship_id = $scholarships->id;
        $this->scholarship_name = $scholarships->scholarship_name;
        $this->description = $scholarships->description;
        $this->amount = $scholarships->amount;
        $this->castes = unserialize($scholarships->castes);
        $this->address = $scholarships->address;        
        $this->highlight = $scholarships->highlight; 

        $this->submit_btn = "Update";
        $this->submit = "update";
    }

    public function update() {

        $this->validate([
            'scholarship_name' => 'required',
            'description' => 'required'
        ]);

        $scholarships = Scholarship::find($this->scholarship_id);

        $scholarships->scholarship_name = $this->scholarship_name;
        $scholarships->description = $this->description;
        $scholarships->amount = $this->amount;
        $scholarships->address = $this->address;
        $scholarships->castes = serialize($this->castes);
        $scholarships->highlight = $this->highlight; 
        
        if (!$scholarships->save()) {
            session()->flash('message', 'Scholarship not updated');
            return;
        }
        
        $this->submit_btn = "Add";
        $this->submit = "store";
        $this->resetFields();
        session()->flash('message', 'Scholarship Updated');        
    }

    public function update_status($id, $status) {       

        $scholarships = Scholarship::find($id);
        $scholarships->status = ($status) ? 0 : 1;

        if (!$scholarships->save()) {
            session()->flash('message', 'Scholarship Status not updated');
            return;
        }       
    }

    public function resetFields() {

        $this->scholarship_id = '';
        $this->scholarship_name = '';
        $this->description = '';
        $this->amount = '';
        $this->address = ''; 
        $this->castes = '';        
    }

    public function store() {

        $scholarships = new Scholarship();
        $scholarships->scholarship_name = $this->scholarship_name;
        $scholarships->description = $this->description;        
        $scholarships->amount = $this->amount;
        $scholarships->address = $this->address;
        $scholarships->castes = serialize($this->castes);
        $scholarships->highlight = $this->highlight; 
        $scholarships->status = 1;

        if (!$scholarships->save()) {
            session()->flash('message', 'Scholarship not added');
            return;
        }

        $this->resetFields();
        session()->flash('message', 'Scholarship Added');
    }

    public function delete($id) {
        $scholarships = Scholarship::find($id);
        
        $scholarships->delete();        
        session()->flash('message', 'Scholarship Deleted');
    }
}
