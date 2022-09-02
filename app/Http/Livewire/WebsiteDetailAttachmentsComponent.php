<?php

namespace App\Http\Livewire;

use Livewire\Component;

use App\Models\WebPages;
use App\Models\WebsiteDetails;
use App\Models\WebsiteDetailAttachments;

use Livewire\WithFileUploads;
use Livewire\WithPagination;

class WebsiteDetailAttachmentsComponent extends Component
{
    use WithFileUploads;
    use WithPagination;

    protected $paginationTheme = 'bootstrap';

    public $submit = 'store';
    public $upload_path = 'page_images';
    public $submit_btn = 'Add';

    protected $listeners = ['getDetailPages' => 'getDetailPages'];

    public $web_page_id, $website_detail_id, $website_details=[], $website_detail_att_id, $description, $attachment=[], $attachment_src, $status;

    public function render()
    {
        $web_pages = WebPages::all();
        $website_detail_attachments = WebsiteDetailAttachments::all();
        return view('livewire.website-detail-attachments-component',['web_pages' => $web_pages, 'website_detail_attachments' => $website_detail_attachments])
            ->layout('livewire.layouts.base');
    }

    public function getDetailPages()
    {
        $wd = WebsiteDetails::where("web_page_id", $this->web_page_id)->get();
        $this->website_details = $wd;
    }

    public function resetFields() {

        $this->web_page_id = '';
        $this->website_detail_id = '';
        $this->website_detail_att_id = '';
        $this->description = '';
        $this->attachment = [];
        $this->attachment_src = '';
    }
    
    public function store() {        
    
        foreach ($this->attachment as $file) {
            
            $website_detail_attachments = new WebsiteDetailAttachments();
            $website_detail_attachments->web_page_id = $this->web_page_id;
            $website_detail_attachments->website_detail_id = $this->website_detail_id;
            $website_detail_attachments->status = 1;
            $website_detail_attachments->attachment = ($file->store($this->upload_path, 'public'));
            
            if (!$website_detail_attachments->save()) {
                session()->flash('message', 'Website Attachment not added');
                return;
            }
        }
        $this->resetFields();
        session()->flash('message', 'Website Attachment Added Successfully');
     }
}
