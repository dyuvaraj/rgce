<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WebsiteDetailAttachments extends Model
{
    use HasFactory;

    public $table = "website_detail_attachments";

    public function web_page()
    {
        return $this->belongsTo(WebPages::class);
    }

    public function website_detail()
    {
        return $this->belongsTo(WebsiteDetails::class);
    }
}
