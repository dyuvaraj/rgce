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
        <h2>University Rankers</h2>
      </div>

      <div class="row">

            @if ($university_rankers->count() > 0)

                @foreach ($university_rankers as $i => $year)

                    <div class="p-3 bg-danger border border-danger mb-5 text-light rounded fs-4"> {{$i}} </div>

                    @foreach ($year as $i => $data)

                      <div class="col-md-3 mb-5">
                          <div class="card">
                              <img src="{{ asset('storage/'.$data->student_image) }}" class="card-img-top" alt="...">
                              <div class="card-body">
                              <h5 class="card-title text-danger">{{ $data->student_name }}</h5>
                              <p class="card-text"> </p>
                              </div>
                              <ul class="list-group list-group-flush">
                              <li class="list-group-item fw-bold">{{ $data->course->degree.' - '.$data->course->specialization }}</li>
                              <li class="list-group-item">Percentage <span class="text-success fs-5 fw-bold">{{ $data->percentage }}</span></li>
                              <li class="list-group-item">Rank <span class="text-success fs-5 fw-bold">{{ $data->rank }}</span></li>
                              </ul>
                          </div>
                      </div>

                    @endforeach
                @endforeach
            @endif

        </div>

    </section>
  </main>
</div>
