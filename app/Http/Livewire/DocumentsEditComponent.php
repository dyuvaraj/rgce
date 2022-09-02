<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Documents;

class DocumentsEditComponent extends Component
{
    public $submit = 'store';
    public $submit_btn = 'Add';

    public $document_id, $document_name, $description, $highlight, $status;

    public function mount($id)
    { 
        $this->edit($id);
    }

    public function render()
    {
        return view('livewire.documents-edit-component')->layout('livewire.layouts.base');
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
        // $this->resetFields();

        session()->flash('message', 'Documents Updated');        
    }
}
