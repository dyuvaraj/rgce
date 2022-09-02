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
        <h2>{{ $courses->specialization }}

        <span class="card-text">
            @if($courses->special_mention)
                ({{ $courses->special_mention }})
            @endif
        </span>

        </h2>
        
      </div>

    <div class="row course">

        @if ($course_banner_images->count() > 0)
            @foreach ($course_banner_images as $i => $data)
                <img src="{{ asset('storage/'.$data->course_image) }}" class="img-fluid" alt="...">
            @endforeach
        @endif

        <p>{!! $courses->description !!}</p>

        @if ($course_images->count() > 0)
            @foreach ($course_images as $i => $data)
            <div class="col-md-4 mb-5">
                <div class="card" style="width: 18rem;">
                    <img src="{{ asset('storage/'.$data->course_image) }}" class="card-img-top" alt="...">
                    <div class="card-body">
                    <h5 class="card-title">{{ $data->title }}</h5>

                    
                    <p class="card-text">
                        {{ $data->description }}
                    </p>
                    
                    </div>
                </div>
            </div>
            @endforeach
          @endif

    </div>

    </section>


    
  
  </main>

</div>
