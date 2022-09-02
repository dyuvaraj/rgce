<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DocumentAttachments extends Model
{
    use HasFactory;

    public $table = "document_attachments";

    public function document()
    {
        return $this->belongsTo(Documents::class);
    }
}
