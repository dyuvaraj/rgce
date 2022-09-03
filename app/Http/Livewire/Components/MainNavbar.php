<?php

namespace App\Http\Livewire\Components;

use Livewire\Component;
use App\Models\Lead;

class MainNavbar extends Component
{
    public $lead_type = ['Enquiry', 'Admission'];
    public $lead_id, $name, $email, $phone_no, $type, $description;
    public $submit = 'store';

    public function render()
    {
        return view('livewire.components.main-navbar', ['lead_type' => $this->lead_type]);
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
        $this->dispatchBrowserEvent('deleted', ['message' => 'Enquiry added successfully!']);
        session()->flash('message', 'Lead Added Successfully');
     }
}
