<?php

namespace App\Http\Livewire;

use Livewire\Component;

use App\Models\PlacementCompany;
use Livewire\WithFileUploads;
use Livewire\WithPagination;

class PlacementCompanyComponent extends Component
{
    use WithFileUploads;
    use WithPagination;

    protected $paginationTheme = 'bootstrap';

    public $submit = 'store';
    public $submit_btn = 'Add';
    public $upload_path = 'company_images';
    
    public $company_id, $company_name, $description, $company_image, $company_image_src, $highlight, $status;

    public function updated ($fields) {

        $this->validateOnly($fields,[
            'company_name' => 'required',
            'description' => 'required',
            'company_image' => 'image'
        ]);        
    }

    public function render()
    {
        $placement_companies = PlacementCompany::paginate(10);
        return view('livewire.placement-company-component', ['placement_companies' => $placement_companies])
            ->layout('livewire.layouts.base');
    }

    public function resetFields() {
        $this->company_id = '';
        $this->company_name = '';
        $this->description = '';
        $this->company_image = '';
        $this->highlight = 0;
    }

    public function store() {

        $placement_companies = new PlacementCompany();
        $placement_companies->company_name = $this->company_name;
        $placement_companies->description = $this->description;
        $placement_companies->highlight = $this->highlight;
        $placement_companies->status = 1;

        if( isset($this->company_image) && $this->company_image != null ) {
            $placement_companies->company_image = ($this->company_image->store($this->upload_path, 'public'));
        }        

        if (!$placement_companies->save()) {
            session()->flash('message', 'Placement Company not added');
            return;
        }

        $this->resetFields();
        session()->flash('message', 'Placement Company Added');
    }

    public function update_status($id, $status) {       

        $placement_companies = PlacementCompany::find($id);
        $placement_companies->status = ($status) ? 0 : 1;

        if (!$placement_companies->save()) {
            session()->flash('message', 'Placement Company Status not updated');
            return;
        }       
    }

    public function edit($id) {

        $placement_companies = PlacementCompany::find($id);
        $this->company_id = $placement_companies->id;
        $this->company_name = $placement_companies->company_name;
        $this->description = $placement_companies->description;
        $this->company_image_src = $placement_companies->company_image;
        $this->highlight = $placement_companies->highlight;
        
        $this->submit_btn = "Update";
        $this->submit = "update";
    }

    public function update() {

        $this->validate([
            'company_name' => 'required',
            'description' => 'required',
            'company_image' => 'image'
        ]);

        $placement_companies = PlacementCompany::find($this->company_id);

        $placement_companies->company_name = $this->company_name;
        $placement_companies->description = $this->description;
        $placement_companies->highlight = $this->highlight;

        if( isset($this->company_image) && $this->company_image != null ) {
            if(file_exists(storage_path('app/public/'.$placement_companies->company_image)) && $placement_companies->company_image != ''){
                unlink(storage_path('app/public/'.$placement_companies->company_image));
            }
            
            $placement_companies->company_image = ($this->company_image->store($this->upload_path, 'public'));  
        }        
        
        if (!$placement_companies->save()) {
            session()->flash('message', 'Placement Company not updated');
            return;
        }

        $this->company_image_src = '';
        $this->submit_btn = "Add";
        $this->submit = "store";
        $this->resetFields();

        session()->flash('message', 'Placement Company Updated');        
    }

    public function delete_image($id) {

        $placement_companies = PlacementCompany::find($id);
        
        if(file_exists(storage_path('app/public/'.$placement_companies->company_image))){            
            unlink(storage_path('app/public/'.$placement_companies->company_image));
        }

        $placement_companies->company_image = '';
        $this->company_image_src = '';
        $this->company_image = '';

        if (!$placement_companies->save()) {
            session()->flash('message', 'Placement Company Image not deleted');
            return;
        }
        session()->flash('message', 'Placement Company Image Deleted');
    }

    public function delete($id) {

        $placement_companies = PlacementCompany::find($id);
        
        if(file_exists(storage_path('app/public/'.$placement_companies->company_image))){            
            unlink(storage_path('app/public/'.$placement_companies->company_image));
        }

        $placement_companies->company_image = '';

        $placement_companies->delete();   

        session()->flash('message', 'Placement Company Deleted');
    }    
}
