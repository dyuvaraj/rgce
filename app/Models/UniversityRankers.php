<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UniversityRankers extends Model
{
    use HasFactory;

    public $table = "university_rankers";

    public function course()
    {
        return $this->belongsTo(Course::class);
    }
}
