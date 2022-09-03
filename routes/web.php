<?php
use App\Http\Livewire\NewsComponent;
use App\Http\Livewire\NewsEditComponent;

use App\Http\Livewire\LeadComponent;

use App\Http\Livewire\PlacementComponent;
use App\Http\Livewire\PlacementEditComponent;
use App\Http\Livewire\PlacementCompanyComponent;

use App\Http\Livewire\GalleryComponent;
use App\Http\Livewire\GalleryImageComponent;
use App\Http\Livewire\GalleryImageShowComponent;

use App\Http\Livewire\CourseComponent;
use App\Http\Livewire\CourseEditComponent;
use App\Http\Livewire\CourseImageComponent;
use App\Http\Livewire\CourseImageShowComponent;

use App\Http\Livewire\DocumentsComponent;
use App\Http\Livewire\DocumentsEditComponent;
use App\Http\Livewire\DocumentAtachmentsComponent;
use App\Http\Livewire\DocumentAttachmentsShowComponent;

use App\Http\Livewire\SlidesComponent;
use App\Http\Livewire\SlideImagesComponent;
use App\Http\Livewire\SlideImageShowComponent;

use App\Http\Livewire\ScholarshipComponent;

use App\Http\Livewire\UniversityRankersComponent;

use App\Http\Livewire\WebPagesComponent;

use App\Http\Livewire\WebsiteDetailsComponent;
use App\Http\Livewire\WebsiteDetailsEditComponent;

use App\Http\Livewire\WebsiteDetailAttachmentsComponent;
use App\Http\Livewire\WebsiteDetailAttachmentShowComponent;
use App\Http\Livewire\WebsiteDetailAttachmentEditComponent;

use App\Http\Livewire\HomeComponent;
use App\Http\Livewire\Frontend\GalleryFeComponent;
use App\Http\Livewire\Frontend\GalleryImageFeComponent;
use App\Http\Livewire\Frontend\UniversityRankerFeComponent;
use App\Http\Livewire\Frontend\ScholarshipFeComponent;
use App\Http\Livewire\Frontend\AmenitiesFeComponent;

use App\Http\Livewire\Frontend\CourseFeComponent;
use App\Http\Livewire\Frontend\CourseDetailFeComponent;

use App\Http\Livewire\Frontend\CollegeFeComponent;
use App\Http\Livewire\Frontend\ManagementFeComponent;
use App\Http\Livewire\Frontend\SecretaryFeComponent;
use App\Http\Livewire\Frontend\PrincipalFeComponent;
use App\Http\Livewire\Frontend\AdvisorFeComponent;
use App\Http\Livewire\Frontend\CouncilFeComponent;
use App\Http\Livewire\Frontend\FeatureFeComponent;
use App\Http\Livewire\Frontend\ChairmanFeComponent;
use App\Http\Livewire\Frontend\ContactusFeComponent;
use App\Http\Livewire\Frontend\PlacementFeComponent;
use App\Http\Livewire\Frontend\AdmissionFeComponent;

use App\Http\Livewire\Frontend\StaticPageFeComponent;

use App\Http\Livewire\Frontend\LoginFeComponent;

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::group(['middleware'=>'auth'], function () {

Route::get('admin/news', NewsComponent::class)->name('admin.news');
Route::get('admin/news/{id}', NewsEditComponent::class)->name('admin.news.edit');

Route::get('admin/company', PlacementCompanyComponent::class);
Route::get('admin/company/{id}', PlacementCompanyComponent::class);

Route::get('admin/scholarship', ScholarshipComponent::class);
Route::get('admin/scholarship/{id}', ScholarshipComponent::class);

Route::get('admin/university_ranker', UniversityRankersComponent::class);
Route::get('admin/university_ranker/{id}', UniversityRankersComponent::class);

Route::get('admin/placement', PlacementComponent::class);
Route::get('admin/placement/{id}', PlacementEditComponent::class)->name('admin.placement.edit');

Route::get('admin/gallery', GalleryComponent::class);
Route::get('admin/gallery_image', GalleryImageComponent::class);
Route::get('admin/gallery_image/{gallery_id}', GalleryImageShowComponent::class);

Route::get('admin/lead', LeadComponent::class);

Route::get('admin/course', CourseComponent::class);
Route::get('admin/course/{id}', CourseEditComponent::class)->name('admin.course.edit');
Route::get('admin/course_image', CourseImageComponent::class);
Route::get('admin/course_image/{course_id}', CourseImageShowComponent::class);

Route::get('admin/document', DocumentsComponent::class);
Route::get('admin/document/{id}', DocumentsEditComponent::class)->name('admin.document.edit');
Route::get('admin/document_attachment', DocumentAtachmentsComponent::class);
Route::get('admin/document_attachment/{document_id}', DocumentAttachmentsShowComponent::class);

Route::get('admin/slide', SlidesComponent::class);
Route::get('admin/slide_image', SlideImagesComponent::class);
Route::get('admin/slide_image/{slide_id}', SlideImageShowComponent::class);

Route::get('admin/page', WebPagesComponent::class);
Route::get('admin/page/{page_id}', WebPagesComponent::class);

Route::get('admin/page_detail', WebsiteDetailsComponent::class);
Route::get('admin/page_detail/{id}', WebsiteDetailsEditComponent::class)->name('admin.pagedetail.edit');

Route::get('admin/page_detail_attachment', WebsiteDetailAttachmentsComponent::class);
Route::get('admin/page_detail_attachment/{id}', WebsiteDetailAttachmentShowComponent::class);
Route::get('admin/page_detail_attachment/edit/{id}', WebsiteDetailAttachmentEditComponent::class)->name('admin.pagedetailatt.edit');

});

Route::get('/', HomeComponent::class);
Route::get('/gallery', GalleryFeComponent::class);
Route::get('/gallery/{id}', GalleryImageFeComponent::class);
Route::get('/university-rankers', UniversityRankerFeComponent::class);
Route::get('/scholarship', ScholarshipFeComponent::class);
Route::get('/amenities', AmenitiesFeComponent::class);
Route::get('/course/{course}', CourseFeComponent::class);
Route::get('/course/{course}/{id}', CourseDetailFeComponent::class);
Route::get('/college', CollegeFeComponent::class);
Route::get('/management', ManagementFeComponent::class);
Route::get('/chairman', ChairmanFeComponent::class);
Route::get('/secretary', SecretaryFeComponent::class);
Route::get('/principal', PrincipalFeComponent::class);
Route::get('/advisor', AdvisorFeComponent::class);
Route::get('/council', CouncilFeComponent::class);
Route::get('/feature', FeatureFeComponent::class);
Route::get('/contact-us', ContactusFeComponent::class);
Route::get('/placement', PlacementFeComponent::class);
Route::get('/admission', AdmissionFeComponent::class);

Route::get('/page/{id}', StaticPageFeComponent::class);

Route::get('/login', LoginFeComponent::class)->name('login');