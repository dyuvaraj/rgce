<div>
<br /><br /><br />
  <main id="main">
    <section id="hero2">
      <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="false">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="{{ asset('main_assets/img/slide/1.jpg') }}" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
              <h5>First slide label</h5>
              <p>Some representative placeholder content for the first slide.</p>
            </div>
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
    </section>


    <section id="commonContainer" class="container">

      <div class="section-title">
        <h2>{{ $galleries->title }}</h2>
        <p>{{ $galleries->description }}</p>
        <p class="event-date"><i class="bi bi-calendar4-event me-2"></i> 5-Mar-2020 to 6-Mar-2020</p>
      </div>

      <hr class="mt-2 mb-5">
      
      <div class="row text-center text-lg-start">
    
        @if ($gallery_images->count() > 0)
            @foreach ($gallery_images as $i => $data)
                <div class="col-lg-3 col-md-4 col-6 image-box overflow-hidden mb-4">

                  <div class="gallery-item">
                    <a href="{{ asset('storage/'.$data->gallery_image) }}" class="galelry-lightbox">
                      <img class="img-thumbnail" src="{{ asset('storage/'.$data->gallery_image) }}" alt="" class="img-fluid">
                    </a>
                  </div>

                </div>
            @endforeach
        @endif

      </div>

    </section>
    
  </main>

</div>
