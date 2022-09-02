<?php

namespace App\Http\Livewire;

use Livewire\Component;

use App\Models\WebPages;
use App\Models\WebsiteDetails;

class WebsiteDetailsEditComponent extends Component
{
    public $submit = 'store';
    public $submit_btn = 'Add';

    public  $website_detail_id, $web_page_id, $order, $container, $description, $status;

    public function mount($id)
    { 
        $this->edit($id);
    }

    public function render()
    {
        $web_pages = WebPages::all();
        return view('livewire.website-details-edit-component', ['web_pages' => $web_pages])
        ->layout('livewire.layouts.base');
    }

    public function edit($id) {
        $website_details = WebsiteDetails::find($id);
        $this->website_detail_id = $website_details->id;
        $this->web_page_id = $website_details->web_page_id;
        $this->description = $website_details->description;
        $this->container = $website_details->container;
        $this->order = $website_details->order;        

        $this->submit_btn = "Update";
        $this->submit = "update";
    }

    public function update() {

        $this->validate([
            'web_page_id' => 'required',
            'description' => 'required'
        ]);

        $website_details = WebsiteDetails::find($this->website_detail_id);

        $website_details->web_page_id = $this->web_page_id;
        $website_details->description = $this->description;
        $website_details->container = $this->container;
        $website_details->order = $this->order;
        
        if (!$website_details->save()) {
            session()->flash('message', 'Website Details not updated');
            return;
        }
        
        $this->submit_btn = "Add";
        $this->submit = "store";
        // $this->resetFields();
        session()->flash('message', 'Website Details Updated');        
    }
}
