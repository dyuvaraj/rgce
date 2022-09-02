<?php

namespace App\Http\Livewire;

use App\Models\Lead;
use Livewire\Component;

class LeadComponent extends Component
{
    public $lead_type = ['Enquiry', 'Admission'];
    public $lead_id, $name, $email, $phone_no, $type, $description;
    public $submit = 'store';

    public function updated ($fields) {

        $this->validateOnly($fields,[
            'name' => 'required',
            'email' => 'required|email',
            'phone_no' => 'required',
            'type' => 'required',
            'description' => 'required',
        ]);        
    }

    public function render()
    {
        $leads = Lead::all();
        return view('livewire.lead-component', ['leads' => $leads, 'lead_type' => $this->lead_type])
                ->layout('livewire.layouts.base');
    }

    public function resetFields() {
        $this->name = '';
        $this->email = '';
        $this->description = '';
        $this->phone_no = '';
        $this->type = '';
    }

    public function store() {
        $leads = new Lead();
        $leads->name = $this->name;
        $leads->email = $this->email;
        $leads->phone_no = $this->phone_no;
        $leads->type = $this->type;
        $leads->description = $this->description;
        $leads->status = 1;   

        if (!$leads->save()) {
            session()->flash('message', 'Lead not added');
            return;
        }

        $this->resetFields();
        session()->flash('message', 'Lead Added Successfully');
     }

     public function edit($id) {

        $leads = Lead::find($id);
        $this->lead_id = $leads->id;
        $this->name = $leads->name;
        $this->email = $leads->email;
        $this->phone_no = $leads->phone_no;
        $this->type = $leads->type;
        $this->description = $leads->description;

        $this->submit = "update";
    }

    public function update() {

        $this->validate([
            'name' => 'required',
            'email' => 'required|email',
            'phone_no' => 'required',
            'type' => 'required',
            'description' => 'required',
        ]);  

        $leads = Lead::find($this->lead_id);

        $leads->name = $this->name;
        $leads->email = $this->email;
        $leads->phone_no = $this->phone_no;
        $leads->type = $this->type;
        $leads->description = $this->description;

        if (!$leads->save()) {
            session()->flash('message', 'Lead not updated');
            return;
        }

        $this->submit = "store";
        $this->resetFields();
        session()->flash('message', 'Lead Updated Successfully');        
    }
}
