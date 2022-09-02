<?php

namespace App\Http\Livewire\Frontend;

use App\Models\Scholarship;
use Livewire\Component;

class ScholarshipFeComponent extends Component
{
    public function render()
    {
        $scholarships = Scholarship::all();

        return view('livewire.frontend.scholarship-fe-component', ['scholarships' => $scholarships])
        ->layout('livewire.layouts.app');
    }
}
