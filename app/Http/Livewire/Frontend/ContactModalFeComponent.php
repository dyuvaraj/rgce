<?php

namespace App\Http\Livewire\Frontend;

use Livewire\Component;
use App\Models\Lead;

class ContactModalFeComponent extends Component
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
        return view('livewire.frontend.contact-modal-fe-component', ['lead_type' => $this->lead_type])
        ->layout('livewire.layouts.app');
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

        session()->flash('message', 'Lead Added Successfully');
     }
}
