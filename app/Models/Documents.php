<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Documents extends Model
{
    use HasFactory;

    public $table = "documents";

    public function document_attachment() {

        return $this->hasMany(DocumentAttachments::class);
    }
}
