<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GalleryImage extends Model
{
    use HasFactory;

    public $table = "gallery_images";

    public function gallery()
    {
        return $this->belongsTo(Gallery::class);
    }
}
