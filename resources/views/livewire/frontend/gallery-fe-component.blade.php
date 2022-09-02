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
        <h2>Gallery & Events</h2>
        <p>Gallery and Events happened in Rajiv Gandhi college of Engineering
        </p>
      </div>

    <div class="row gallery">
    <div class="album py-5 bg-light">
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
        @if ($galleries->count() > 0)
            @foreach ($galleries as $i => $data)
                <!-- <div class="col-md-4 mb-3">
                <div class="row g-0 bg-light position-relative">
                    <h6 class="mt-0 p-4 pb-0 mb-0 d-inline-block text-truncate">{{ $data->title }}</h6>
                    <div class="col-md-8 mb-md-0 p-md-4">
                    <img src="{{ asset('storage/'.$data->gallery_image) }}" class="w-100" alt="..." style="max-height: 153px;">
                    </div>
                    <div class="col-md-4 p-4 ps-md-0">              
                    <p>{{ $data->description }}</p>
                    <a href="{{ url('gallery/'.$data->id) }}" class="stretched-link">View Event</a>
                    </div>
                </div>
                </div> -->

                <div class="col">
                  <div class="card shadow-sm">
                    <img src="{{ asset('storage/'.$data->gallery_image) }}" class="bd-placeholder-img card-img-top" width="100%" height="225" />

                    <div class="card-body">
                      <p class="card-text fw-bold fs-6 text-dark">{{ $data->title }}</p>
                      <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">
                          <a type="button" class="btn btn-sm btn-outline-secondary" href="{{ url('gallery/'.$data->id) }}">View</a>
                          <!-- <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
                        </div>
                        <!-- <small class="text-muted">9 mins</small> -->
                      </div>
                    </div>
                  </div>
                </div>


            @endforeach
          @endif
    </div>
    </div>
    </div>

    </section>


    
  
  </main>

</div>
