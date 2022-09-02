<?php

namespace App\Http\Livewire;

use Livewire\Component;

use App\Models\WebPages;
use App\Models\WebsiteDetails;

use Livewire\WithPagination;

class WebsiteDetailsComponent extends Component
{
    use WithPagination;

    protected $paginationTheme = 'bootstrap';

    public $submit = 'store';
    public $submit_btn = 'Add';

    public  $website_detail_id, $web_page_id, $order, $container, $description, $status;

    public function updated ($fields) {

        $this->validateOnly($fields,[
            'web_page_id' => 'required',
            'description' => 'required'
        ]);        
    }

    public function render()
    {
        $web_pages = WebPages::all();
        $website_details = WebsiteDetails::paginate(10);
        return view('livewire.website-details-component', ['web_pages' => $web_pages, 'website_details' => $website_details])
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
        $this->resetFields();
        session()->flash('message', 'Website Details Updated');        
    }

    public function update_status($id, $status) {       

        $website_details = WebsiteDetails::find($id);
        $website_details->status = ($status) ? 0 : 1;

        if (!$website_details->save()) {
            session()->flash('message', 'Website Details Status not updated');
            return;
        }       
    }

    public function resetFields() {

        $this->web_page_id = '';
        $this->website_detail_id = '';
        $this->container = '';
        $this->description = '';
        $this->order = '';       
    }

    public function store() {

        $website_details = new WebsiteDetails();

        $website_details->web_page_id = $this->web_page_id;
        $website_details->description = $this->description;
        $website_details->container = $this->container;
        $website_details->order = $this->order;
        $website_details->status = 1;

        if (!$website_details->save()) {
            session()->flash('message', 'Website Details not added');
            return;
        }

        $this->resetFields();
        session()->flash('message', 'Website Details Added');
    }

    public function delete($id) {
        $website_details = WebsiteDetails::find($id);
        
        $website_details->delete();        
        session()->flash('message', 'Website Details Deleted');
    }
}
