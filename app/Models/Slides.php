<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Slides extends Model
{
    use HasFactory;

    public $table = "slides";

    public function slide_images() {

        return $this->hasMany(SlideImage::class);
    }
}
