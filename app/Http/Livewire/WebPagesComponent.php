<?php

namespace App\Http\Livewire;

use App\Models\WebPages;
use Livewire\Component;

class WebPagesComponent extends Component
{
    public $page_id, $page, $status;

    public $submit = 'store';
    public $submit_btn = 'Add';

    public function updated ($fields) {

        $this->validateOnly($fields,[
            'page' => 'required'
        ]);        
    }

    public function render()
    {
        $pages = WebPages::all();
        return view('livewire.web-pages-component', ['pages' => $pages])
                ->layout('livewire.layouts.base');
    }

    public function resetFields() {
        $this->page = '';
    }

    public function store() {
        $pages = new WebPages();
        $pages->page = $this->page;
        $pages->status = 1;   

        if (!$pages->save()) {
            session()->flash('message', 'Page not added');
            return;
        }

        $this->resetFields();
        session()->flash('message', 'Page Added Successfully');
     }

     public function edit($id) {

        $pages = WebPages::find($id);
        $this->page_id = $pages->id;
        $this->page = $pages->page;

        $this->submit_btn = "Update";
        $this->submit = "update";
    }

    public function update() {

        $this->validate([
            'page' => 'required'
        ]);  

        $pages = WebPages::find($this->page_id);

        $pages->page = $this->page;

        if (!$pages->save()) {
            session()->flash('message', 'Page not updated');
            return;
        }

        $this->submit = "store";
        $this->resetFields();
        session()->flash('message', 'Page Updated Successfully');        
    }

    public function delete($id) {

        $pages = WebPages::find($id);
        $pages->delete();
        
        session()->flash('message', 'Page Deleted');
    }
}
