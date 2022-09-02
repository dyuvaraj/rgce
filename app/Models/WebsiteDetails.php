<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WebsiteDetails extends Model
{
    use HasFactory;
    
    public $table = "website_details";

    public function web_page()
    {
        return $this->belongsTo(WebPages::class);
    }

    public function website_detail_attachment() {

        return $this->hasMany(WebsiteDetailAttachments::class);
    }
}
