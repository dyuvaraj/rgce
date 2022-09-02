<?php

namespace App\Http\Livewire;

use Livewire\Component;

use App\Models\WebPages;
use App\Models\WebsiteDetails;
use App\Models\WebsiteDetailAttachments;

use Livewire\WithFileUploads;

class WebsiteDetailAttachmentEditComponent extends Component
{
    use WithFileUploads;

    public $submit = 'store';
    public $upload_path = 'page_images';

    public $website_page_id, $website_detail_id, $website_detail_att_id, $title, $description, $attachment, $status;

    public function mount($id)
    { 
        $this->edit($id);
    }

    public function edit($id) {

        $website_detail_attachments = WebsiteDetailAttachments::find($id);
        $this->website_detail_att_id = $website_detail_attachments->id;
        $this->website_page_id = $website_detail_attachments->website_page_id;
        $this->website_detail_id = $website_detail_attachments->website_detail_id;
        $this->title = $website_detail_attachments->title;
        $this->description = $website_detail_attachments->description;
        $this->status = $website_detail_attachments->status;
    }

    public function update() {

        $website_detail_attachments = WebsiteDetailAttachments::find($this->website_detail_att_id);
        $website_detail_attachments->title = $this->title;
        $website_detail_attachments->description = $this->description;
       
        if (!$website_detail_attachments->save()) {
            session()->flash('message', 'Website Attachment not updated');
            return;
        }

        // $this->resetFields();
        session()->flash('message', 'Website Attachment Updated');        
    }


    public function render()
    {
        $web_pages = WebPages::all();
        $website_details = WebsiteDetails::all();

        return view('livewire.website-detail-attachment-edit-component', ['web_pages' => $web_pages, 'website_details' => $website_details])
        ->layout('livewire.layouts.base');
    }
}
