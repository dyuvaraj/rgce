<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use DB;

class WebPages extends Model
{
    use HasFactory;

    public $table = "web_pages";

    public function website_detail() {

        return $this->hasMany(WebsiteDetails::class);
    }

    public function website_detail_attachment() {

        return $this->hasMany(WebsiteDetailAttachments::class);
    }

    public function getWebpages($page_name) {

        $pages = DB::table('web_pages')->where('page', '=', $page_name)->first();
        $page_details = DB::table('website_details')->where('web_page_id', '=', $pages->id)->get();

        $fulldetails = [];

        // foreach($page_details as $key => $page_detail) {

        //     $page_detail_attachments = DB::table('website_detail_attachments')->where([['web_page_id', '=', $pages->id], ['website_detail_id', '=', $page_detail->id]])->get();
        //     $details[$key] = $page_detail;

        //     $attachments = [];
        //     foreach($page_detail_attachments as $page_detail_attachment) {

        //         array_push($attachments, $page_detail_attachment);
        //     }

        //     $details[$key]->attachments = $attachments;
        //     array_push($fulldetails, $details);
        // }

        foreach($page_details as $key => $page_detail) {
            
            array_push($fulldetails, $page_detail);
        }

        foreach($fulldetails as $key => $fulldetail) {
            
            $page_detail_attachments = DB::table('website_detail_attachments')->where([['web_page_id', '=', $pages->id], ['website_detail_id', '=', $fulldetail->id]])->get();
            $fulldetail->attachment = [];
            foreach($page_detail_attachments as $page_detail_attachment) {
                array_push($fulldetail->attachment, $page_detail_attachment);
            }
        }
        
        return $fulldetails;
    }
}
