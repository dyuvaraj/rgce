<?php

namespace App\Http\Livewire;

use Livewire\Component;

use App\Models\Documents;
use App\Models\DocumentAttachments;

use Livewire\WithFileUploads;
use Livewire\WithPagination;

class DocumentAttachmentsShowComponent extends Component
{
    use WithFileUploads;
    use WithPagination;

    protected $paginationTheme = 'bootstrap';

    public $document_id, $document_attachment_id, $title, $description, $status, $highlight, $file;

    public function mount($document_id)
    { 
        $this->document_id = $document_id;
    }

    public function render()
    {

        $documents = Documents::all();
        $document_attachments = DocumentAttachments::paginate(10);
        return view('livewire.document-attachments-show-component', ['documents' => $documents, 'document_attachments' => $document_attachments])
        ->layout('livewire.layouts.base');
    }

    public function resetFields() {
        $this->document_attachment_id = '';
        $this->title = '';
        $this->description = '';
        $this->file = '';
        $this->highlight = 0;
        $this->status = '';
    }

    public function update_status($id, $status) {       

        $document_attachments = DocumentAttachments::find($id);
        $document_attachments->status = ($status) ? 0 : 1;

        if (!$document_attachments->save()) {
            session()->flash('message', 'Document Atachment Status not updated');
            return;
        }       
    }

    public function edit($id) {

        $document_attachments = DocumentAttachments::find($id);
        $this->document_attachment_id = $document_attachments->id;
        $this->title = $document_attachments->title;
        $this->description = $document_attachments->description;
        $this->highlight = $document_attachments->highlight;
    }

    public function update() {

        $document_attachments = DocumentAttachments::find($this->document_attachment_id);
        $document_attachments->title = $this->title;
        $document_attachments->description = $this->description;
        $document_attachments->highlight = $this->highlight;
       
        if (!$document_attachments->save()) {
            session()->flash('message', 'Document Atachment not updated');
            return;
        }

        $this->resetFields();
        session()->flash('message', 'Document Atachment Updated');        
    }

    public function delete($id) {

        $document_attachments = DocumentAttachments::find($id);
        
        if(file_exists(storage_path('app/public/'.$document_attachments->file))){            
            unlink(storage_path('app/public/'.$document_attachments->file));
        }

        if (!$document_attachments->delete()) {
            session()->flash('message', 'Document Atachment not deleted');
            return;
        }
        session()->flash('message', 'Document Atachment Deleted');
    }
}
