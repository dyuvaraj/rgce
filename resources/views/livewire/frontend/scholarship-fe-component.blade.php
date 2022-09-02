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
        <h2>Scholarship</h2>
      </div>

      <div class="row scholarship">

        <p>The unique feature of RGCE Institution is the scholarships awarded to students. RGCE offers full support to get the scholarship from Government and other agencies. Scholarships from Government worth Rs 1 Crore were recently distributed to 600 students of RGCE, based on the eligibility. The lists of various scholarships offered by the Government and Other agencies are listed below.</p>
        
        <h5>SCHOLARSHIPS UNDER GOVERNMENT SCHEMES</h5>

            @if ($scholarships->count() > 0)
                @foreach ($scholarships as $i => $data)
                <div class="col-md-6 scholar-card">
                    <div class="card mb-3">
                        <!-- <img src="..." class="card-img-top" alt="..."> -->
                        <div class="card-body">
                        <h5 class="card-title">{{ $data->scholarship_name }}</h5>
                        <p class="card-text">{{ $data->description }}</p>
                        <p class="card-text"><small class="text-muted">{{ $data->address }}</small></p>
                        </div>
                    </div>
                </div>
                @endforeach
            @endif

        </div>

    </section>
  </main>
</div>
