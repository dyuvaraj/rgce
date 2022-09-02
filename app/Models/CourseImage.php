<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CourseImage extends Model
{
    use HasFactory;

    public $table = "course_images";

    public function course()
    {
        return $this->belongsTo(Course::class);
    }
}
