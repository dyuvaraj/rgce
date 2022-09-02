<?php

namespace App\Http\Livewire;

use App\Models\News;
use Livewire\Component;
use Livewire\WithFileUploads;
use Livewire\WithPagination;

class NewsComponent extends Component
{
    use WithFileUploads;
    use WithPagination;

    protected $paginationTheme = 'bootstrap';

    public $submit = 'store';
    public $submit_btn = 'Add';
    public $upload_path = 'news_images';

    public $news_id, $title, $description, $news_image, $news_image_src, $highlight, $link_title, $link, $status;    

    public function updated ($fields) {

        $this->validateOnly($fields,[
            'title' => 'required',
            'description' => 'required'
        ]);        
     }

    public function render() {

        $news = News::paginate(10);        
        return view('livewire.news-component', ['newses' => $news])
                ->layout('livewire.layouts.base');
    }

    public function edit($news_id) {
        $news = News::find($news_id);
        $this->news_id = $news->id;
        $this->title = $news->title;
        $this->description = $news->description;
        $this->news_image_src = $news->news_image;
        $this->highlight = $news->highlight;
        $this->link_title = $news->link_title;
        $this->link = $news->link;
        
        $this->submit_btn = "Update";
        $this->submit = "update";
    }

    public function update() {

        $this->validate([
            'title' => 'required',
            'description' => 'required'
        ]);

        $news = News::find($this->news_id);

        $news->title = $this->title;
        $news->description = $this->description;
        $news->highlight = $this->highlight;
        $news->link_title = $this->link_title;
        $news->link = $this->link;

        if( isset($this->news_image) && $this->news_image != null ) {
            if(file_exists(storage_path('app/public/'.$news->news_image)) && $news->news_image != ''){
                unlink(storage_path('app/public/'.$news->news_image));
            }
            
            $news->news_image = ($this->news_image->store($this->upload_path, 'public'));  
        }        
        
        if (!$news->save()) {
            session()->flash('message', 'News not updated');
            return;
        }
        $this->news_image_src = '';
        $this->submit_btn = "Add";
        $this->submit = "store";
        $this->resetFields();
        session()->flash('message', 'News Updated');        
    }

    public function update_status($news_id, $status) {       

        $news = News::find($news_id);
        $news->status = ($status) ? 0 : 1;

        if (!$news->save()) {
            session()->flash('message', 'News Status not updated');
            return;
        }       
    }

    public function resetFields() {
        $this->news_id = '';
        $this->title = '';
        $this->description = '';
        $this->news_image = '';
        $this->highlight = 0;
        $this->link_title = '';
        $this->link = '';
    }

    public function store() {
        $news = new News();
        $news->title = $this->title;
        $news->description = $this->description;
        $news->status = 1;
        $news->highlight = $this->highlight;
        $news->link_title = $this->link_title;
        $news->link = $this->link;

        if( isset($this->news_image) && $this->news_image != null ) {
            $news->news_image = ($this->news_image->store('news_images', 'public'));
        }        

        if (!$news->save()) {
            session()->flash('message', 'News not added');
            return;
        }

        $this->resetFields();
        session()->flash('message', 'News Added');
    }

    public function delete($id) {
        $news = News::find($id);
        
        if(file_exists(storage_path('app/public/'.$news->news_image))){            
            unlink(storage_path('app/public/'.$news->news_image));
        }

        $news->news_image = '';

        $news->delete();        
        session()->flash('message', 'News Deleted');
    }

    public function delete_image($id) {

        $news = News::find($id);
        
        if(file_exists(storage_path('app/public/'.$news->news_image))){            
            unlink(storage_path('app/public/'.$news->news_image));
        }

        $news->news_image = '';
        $this->news_image_src = '';
        $this->news_image = '';

        if (!$news->save()) {
            session()->flash('message', 'News Image not deleted');
            return;
        }
        session()->flash('message', 'News Image Deleted');
    }
    
}
