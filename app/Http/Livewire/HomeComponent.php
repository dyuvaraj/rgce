<?php

namespace App\Http\Livewire;

use App\Models\Course;
use App\Models\Gallery;
use App\Models\News;
use App\Models\PlacementCompany;
use Livewire\Component;

class HomeComponent extends Component
{
    public function render()
    {
        $newses = News::all(); 
        $galleries = Gallery::where('highlight', 1)->limit(8)->get();
        $companies = PlacementCompany::all(); 
        $courses = Course::limit(6)->get(); 

        return view('livewire.home-component', ['courses' => $courses, 'newses' => $newses, 'galleries' => $galleries, 'companies' => $companies])
            ->layout('livewire.layouts.app');
    }
}
