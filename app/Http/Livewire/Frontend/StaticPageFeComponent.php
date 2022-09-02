<?php

namespace App\Http\Livewire\Frontend;

use App\Models\WebPages;
use App\Models\WebsiteDetailAttachments;
use App\Models\WebsiteDetails;
use Livewire\Component;

class StaticPageFeComponent extends Component
{
    public $page_id;

    public function mount($id)
    { 
        $this->page_id = $id;
    }

    public function render()
    {
        $pages = new WebPages();



        return view( 'livewire.frontend.static-page-fe-component', 
            [ 
                'pages' => $pages::where('page', '=', $this->page_id)->first(), 
                'fullpages' => $pages->getWebpages($this->page_id) 
            ]
        )->layout('livewire.layouts.app');
    }
}
