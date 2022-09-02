<?php

namespace App\Http\Livewire;

use Livewire\Component;

use App\Models\Documents;
use Livewire\WithPagination;

class DocumentsComponent extends Component
{

    use WithPagination;

    protected $paginationTheme = 'bootstrap';

    public $submit = 'store';
    public $submit_btn = 'Add';
    
    public $document_id, $document_name, $description, $highlight, $status;
    // public $document_category;

    public function updated ($fields) {

        $this->validateOnly($fields,[
            // 'document_category' => 'required',
            'document_name' => 'required',
            'description' => 'required'
        ]);        
    }

    public function render()
    {
        $documents = Documents::paginate(10);
        return view('livewire.documents-component', ['documents' => $documents])
                ->layout('livewire.layouts.base');
    }

    public function resetFields() {
        $this->document_id = '';
        $this->document_name = '';
        $this->description = '';
        // $this->document_category = '';
        $this->highlight = 0;
    }

    public function store() {

        $documents = new Documents();
        $documents->document_name = $this->document_name;
        // $documents->document_category = $this->document_category;
        $documents->description = $this->description;
        $documents->highlight = $this->highlight;
        $documents->status = 1;

        if (!$documents->save()) {
            session()->flash('message', 'Documents not added');
            return;
        }

        $this->resetFields();
        session()->flash('message', 'Documents Added');
    }

    public function update_status($id, $status) {       

        $documents = Documents::find($id);
        $documents->status = ($status) ? 0 : 1;

        if (!$documents->save()) {
            session()->flash('message', 'Documents Status not updated');
            return;
        }       
    }

    public function edit($id) {

        $documents = Documents::find($id);
        $this->document_id = $documents->id;
        $this->document_name = $documents->document_name;
        // $this->document_category = $documents->document_category;
        $this->description = $documents->description;
        $this->highlight = $documents->highlight;
        
        $this->submit_btn = "Update";
        $this->submit = "update";
    }

    public function update() {

        $this->validate([
            // 'document_category' => 'required',
            'document_name' => 'required',
            'description' => 'required'
        ]);

        $documents = Documents::find($this->document_id);

        $documents->document_name = $this->document_name;
        // $documents->document_category = $this->document_category;
        $documents->description = $this->description;
        $documents->highlight = $this->highlight;

        if (!$documents->save()) {
            session()->flash('message', 'Documents not updated');
            return;
        }

        $this->submit_btn = "Add";
        $this->submit = "store";
        $this->resetFields();

        session()->flash('message', 'Documents Updated');        
    }

    public function delete($id) {

        $documents = Documents::find($id);
        $documents->delete();   

        session()->flash('message', 'Documents Deleted');
    }
}
