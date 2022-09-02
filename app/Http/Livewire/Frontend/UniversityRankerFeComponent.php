<?php

namespace App\Http\Livewire\Frontend;

use Livewire\Component;
use App\Models\UniversityRankers;
use App\Models\Course;

class UniversityRankerFeComponent extends Component
{
    public function render()
    {

        $courses = Course::all();
        $university_rankers = UniversityRankers::all()->groupBy('year');

        return view('livewire.frontend.university-ranker-fe-component', ['courses' => $courses, 'university_rankers' => $university_rankers])
        ->layout('livewire.layouts.app');
    }
}
