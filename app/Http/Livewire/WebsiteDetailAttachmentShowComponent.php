<?php

namespace App\Http\Livewire;

use Livewire\Component;

use App\Models\WebPages;
use App\Models\WebsiteDetails;
use App\Models\WebsiteDetailAttachments;

use Livewire\WithFileUploads;
use Livewire\WithPagination;

class WebsiteDetailAttachmentShowComponent extends Component
{
    use WithFileUploads;
    use WithPagination;

    protected $paginationTheme = 'bootstrap';

    public $submit = 'store';
    public $upload_path = 'page_images';

    public $website_page_id, $website_detail_id, $website_detail_att_id, $title, $description, $attachment, $status;

    public function mount($id)
    { 
        $this->website_detail_id = $id;
    }

    public function resetFields() {
        $this->website_detail_att_id = '';
        $this->description = '';
        $this->attachment = '';
        $this->status = '';
    }

    public function render()
    {
        $web_pages = WebPages::all();
        $website_details = WebsiteDetails::all();
        $website_detail_attachments = WebsiteDetailAttachments::where('website_detail_id', $this->website_detail_id)->paginate(10);
        return view('livewire.website-detail-attachment-show-component', ['web_pages' => $web_pages, 'website_details' => $website_details, 'website_detail_attachments' => $website_detail_attachments])
        ->layout('livewire.layouts.base');
    }

    public function update_status($id, $status) {       

        $website_detail_attachments = WebsiteDetailAttachments::find($id);
        $website_detail_attachments->status = ($status) ? 0 : 1;

        if (!$website_detail_attachments->save()) {
            session()->flash('message', 'Website Attachment Status not updated');
            return;
        }       
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

        $this->resetFields();
        session()->flash('message', 'Website Attachment Updated');        
    }

    public function delete($id) {

        $website_detail_attachments = WebsiteDetailAttachments::find($id);
        
        if(file_exists(storage_path('app/public/'.$website_detail_attachments->attachment))){            
            unlink(storage_path('app/public/'.$website_detail_attachments->attachment));
        }

        if (!$website_detail_attachments->delete()) {
            session()->flash('message', 'Website Attachment not deleted');
            return;
        }
        session()->flash('message', 'Website Attachment Deleted');
    }
}
