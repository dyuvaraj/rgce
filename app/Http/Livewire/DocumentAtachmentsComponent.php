<?php

namespace App\Http\Livewire;

use Livewire\Component;

use App\Models\Documents;
use App\Models\DocumentAttachments;

use Livewire\WithFileUploads;
use Livewire\WithPagination;

class DocumentAtachmentsComponent extends Component
{
    use WithFileUploads;
    use WithPagination;

    protected $paginationTheme = 'bootstrap';

    public $submit = 'store';
    public $upload_path = 'document_attachments';

    public $document_id, $document_attachment_id, $title, $description, $status;
    public $file = [];   

    public function render()
    {
        $documents = Documents::all();
        $document_attachments = DocumentAttachments::paginate(10);
        return view('livewire.document-atachments-component', ['documents' => $documents, 'document_attachments' => $document_attachments])
        ->layout('livewire.layouts.base');
    }

    public function resetFields() {

        $this->document_id = '';
        $this->document_attachment_id = '';
        $this->title = '';
        $this->description = '';
        $this->file = [];
    }

    public function store() {        
    
        foreach ($this->file as $photo) {
            
            $document_attachments = new DocumentAttachments();
            $document_attachments->document_id = $this->document_id;
            $document_attachments->status = 1;
            $document_attachments->file = ($photo->store($this->upload_path, 'public'));
            
            if (!$document_attachments->save()) {
                session()->flash('message', 'Document Attachments not added');
                return;
            }
        }
        $this->resetFields();
        session()->flash('message', 'Document Attachments Added Successfully');
     }
}
