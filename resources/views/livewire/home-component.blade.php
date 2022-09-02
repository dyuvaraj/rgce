<div>
     <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div class="hero-container">
      <div id="heroCarousel" class="carousel slide carousel-fade" data-bs-ride="carousel" data-bs-interval="5000">

        <!-- <ol class="carousel-indicators" id="hero-carousel-indicators"></ol> -->

        <div class="carousel-inner" role="listbox">

          <!-- Slide 1 -->
          <div class="carousel-item active" style="background-image: url('<?=  asset('main_assets/img/slide/1.jpg') ?>');">
            <div class="carousel-container">
              <div class="carousel-content container">
                <h2 class="animate__animated animate__fadeInDown">Welcome to <span>Rajiv Gandhi College of Engineering</span></h2>
                <p class="animate__animated animate__fadeInUp">
                  Rajiv Gandhi College of Engineering is built on a land of 26 acres in Nemili, Sriperumbudur, this site is about 35 km 
                  from Chennai off the Chennai- Bangalore Highway. It is just 2 km from the Rajiv Gandhi Centre for Youth Development and 4 km from the Rajiv Gandhi Memorial Ground.
                </p>
                <!-- <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">Read More</a> -->
              </div>
            </div>
          </div>

        </div>

        <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
          <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
        </a>
        <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
          <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
        </a>

      </div>
    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= Why Us Section ======= -->
    <section id="why-us" class="why-us">
      <div class="container">

        <div class="row">
          <div class="col-lg-4 d-flex align-items-stretch">
            <div class="content">
              <h3>News & Events</h3>
                <marquee class="donr" scrollamount="4" direction="up" behavior="scroll" onmouseover="this.stop();" onmouseout="this.start();">
                  <ul>
                    @if ($newses->count() > 0)
                      @foreach ($newses as $i => $data)
                        <li> 
                          <h6>{{ $data->title }}</h6>
                          <p>
                            {{ $data->description }}
                            <span><a style="color:#f3c326" href="assets/pdf/JUNE-2022-EXAM-SCHEDULE.pdf" target="_blank"> click here </a></span>
                          </p>
                        </li>
                      @endforeach
                    @else
                    <li> No news found </li>
                    @endif
                  </ul>
                </marquee>
              <div class="text-center">
                <a href="#" class="more-btn">Load More <i class="bx bx-chevron-right"></i></a>
              </div>
            </div>
          </div>
          <div class="col-lg-8 d-flex align-items-stretch">
            <div class="icon-boxes d-flex flex-column justify-content-center">
              <div class="row">
                <div class="col-xl-4 d-flex align-items-stretch">
                  <div class="icon-box mt-4 mt-xl-0">
                    <i class="bx bx-receipt"></i>
                    <h4>Admission</h4>
                    <p>Application Form for the Admission to the College along with the Prospectus are available at The Administrative Office</p>
                  </div>
                </div>
                <div class="col-xl-4 d-flex align-items-stretch">
                  <div class="icon-box mt-4 mt-xl-0">
                    <i class="bx bx-cube-alt"></i>
                    <h4>Scholarship</h4>
                    <p>GRES offers scholarships, which covers tuition fees, hostel fees, mess fee and other charges for four year study in the College.</p>
                  </div>
                </div>
                <div class="col-xl-4 d-flex align-items-stretch">
                  <div class="icon-box mt-4 mt-xl-0">
                    <i class="bx bx-images"></i>
                    <h4>Facilities</h4>
                    <p>We have constructed more than 2,55,000 Sqft of buildings in separate blocks for ECE, EEE, BME and MECH/PE Engineering departments.</p>
                  </div>
                </div>
              </div>
            </div><!-- End .content-->
          </div>
        </div>

      </div>
    </section><!-- End Why Us Section -->


    <!-- ======= Featured Services Section ======= -->
    <!-- <section id="featured-services" class="featured-services">
      <div class="container" data-aos="fade-up">

        <div class="row">
          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
              <div class="icon"><i class="bx bxl-dribbble"></i></div>
              <h4 class="title"><a href="">Lorem Ipsum</a></h4>
              <p class="description">Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="200">
              <div class="icon"><i class="bx bx-file"></i></div>
              <h4 class="title"><a href="">Sed ut perspiciatis</a></h4>
              <p class="description">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="300">
              <div class="icon"><i class="bx bx-tachometer"></i></div>
              <h4 class="title"><a href="">Magni Dolores</a></h4>
              <p class="description">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="400">
              <div class="icon"><i class="bx bx-world"></i></div>
              <h4 class="title"><a href="">Nemo Enim</a></h4>
              <p class="description">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis</p>
            </div>
          </div>

        </div>

      </div> -->
    </section><!-- End Featured Services Section -->

    <!-- ======= Departments Section ======= -->
    <section id="departments" class="departments">
      <div class="container">

        <div class="section-title">
          <h2>Departments</h2>
          <!-- <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p> -->
        </div>

        <div class="row gy-4">
          <div class="col-lg-3">
            <ul class="nav nav-tabs flex-column">

            <?php if ($courses->count() > 0) {
              foreach ($courses as $i => $data) {
            ?>
                <li class="nav-item">
                  <a class="nav-link <?= $i == 0 ? 'active' : '' ?> <?= $i == 1 ? 'show' : '' ?>" data-bs-toggle="tab" href="#tab-<?= $i ?>">{{ ucwords($data->specialization) }}</a>
                </li>
                <?php
                }
              }
              ?>
            </ul>
          </div>
          <div class="col-lg-9">
            <div class="tab-content">

            <?php if ($courses->count() > 0) {
              foreach ($courses as $i => $data) {
            ?>
                <div class="tab-pane <?= $i == 0 ? 'active' : '' ?> <?= $i == 1 ? 'show' : '' ?>" id="tab-<?= $i ?>">
                  <div class="row gy-4">
                    <div class="col-lg-8 details order-2 order-lg-1">
                      <h3>{{ ucwords($data->specialization) }}</h3>
                      <!-- <p class="fst-italic">{!! $data->description !!}</p> -->
                      <p>{!! Str::words($data->description , 100, ' ...')!!}</p>
                    </div>
                    <div class="col-lg-4 text-center order-1 order-lg-2">
                      <img src="{{ asset('storage/'.$data->spec_image) }}" alt="" class="img-fluid">
                    </div>
                  </div>
                </div>
              <?php
                }
              }
              ?>
            

            </div>
          </div>
        </div>

      </div>
    </section><!-- End Departments Section -->

    <!-- ======= Gallery Section ======= -->
    <section id="gallery" class="gallery">
      <div class="container">

        <div class="section-title">
          <h2>Gallery</h2>
          <!-- <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p> -->
        </div>
      </div>

      <div class="container-fluid">
        <div class="row g-0">


          @if ($galleries->count() > 0)
            @foreach ($galleries as $i => $data)
              <div class="col-lg-3 col-md-4">
                <div class="gallery-item">
                  <a href="{{ asset('storage/'.$data->gallery_image) }}" class="galelry-lightbox">
                    <img src="{{ asset('storage/'.$data->gallery_image) }}" alt="" class="img-fluid">
                  </a>
                </div>
              </div>
            @endforeach
          @endif

        </div>

      </div>
    </section><!-- End Gallery Section -->


    <!-- ======= Clients Section ======= -->
    <section id="gallery" class="gallery">
      <div class="container">

        <div class="section-title">
          <h2>Recruitment & Placements</h2>
          <!-- <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p> -->
        </div>
      </div>

      <div class="container">
        <div class="row g-0">
          <div class="your-class">

            @if ($companies->count() > 0)
            @foreach ($companies as $i => $data)
              <div><img src="{{ asset('storage/'.$data->company_image) }}"></div>
            @endforeach
            @endif
            
          </div>
        </div>
      </div>
    </section><!-- End Clients -->


    <!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials">
      <div class="container">

        <div class="section-title">
          <h2>Alumini Testimonials</h2>
          <!-- <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p> -->
        </div>

        <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">

            <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
                  <img src="{{ asset('main_assets/img/testimonials/testimonials-1.jpg') }}" class="testimonial-img" alt="">
                  <h3>Raja Sundaram Ganesan CSE - Batch (2004 - 2008)</h3>
                  <h4>Specialist/Module Lead <br/> System Development Department<br/>Verizon Data Services</h4>
                  <p>
                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                    While growing up or studying in school, every person will have a dream about college life and I had a one too. RGCE fulfilled most of my expectations and had offered me wide range of experiences both professionally and personally. Overall, I had a well-rounded four years in the institution and mere thanks are not enough for my friends and academic staffs that made this happen. 
                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                  </p>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
                  <img src="{{ asset('main_assets/img/testimonials/testimonials-2.jpg') }}" class="testimonial-img" alt="">
                  <h3>Aravind J ECE - Batch (2004 - 2008)</h3>
                  <h4>HR- Manager <br/> Infoline Systems</h4>
                  <p>
                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                    RGCE is a wonderful place to explore and learn. Diversified culture with good opportunities!
                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                  </p>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
                  <img src="{{ asset('main_assets/img/testimonials/testimonials-3.jpg') }}" class="testimonial-img" alt="">
                  <h3>Vineeth V Nair BME - Batch (2007 - 2011)</h3>
                  <h4>Bio Medical Engineer (Head of the Department) <br/> Bin Ali Medical Supplies LLC</h4>
                  <p>
                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                    Enim nisi quem export duis labore cillum quae magna enim sint quorum nulla quem veniam duis minim tempor labore quem eram duis noster aute amet eram fore quis sint minim.
                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                  </p>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
                  <img src="{{ asset('main_assets/img/testimonials/testimonials-4.jpg') }}" class="testimonial-img" alt="">
                  <h3>S Harimohanlal EEE - Batch (2007 - 2011)</h3>
                  <h4>Electrical Engineer- Projects/Operations <br/> OPG Power Generation Private Limited</h4>
                  <p>
                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                    People tell that their College days were unforgettable, wondering who all told it but it's DEFINITELY true. Rajiv Gandhi College of Engineering, Even telling the name of my college gives a smile in my face, not just because I enjoyed my classes there or for all the pranks & crazy things we did there or for the department wise competition we had, it's just that RGCE showed me a different dimension of LIFE.
                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                  </p>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
                  <img src="{{ asset('main_assets/img/testimonials/testimonials-5.jpg') }}" class="testimonial-img" alt="">
                  <h3>Suvas S PE - Batch (2007 - 2011)</h3>
                  <h4>Graduate Engineer Trainee <br/> Jindal Drilling and Industries Limited</h4>
                  <p>
                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                    RGCE blessed me with a unique degree that helps me to stand on the top, where ever I go. I am proud to say I studied in RGCE.
                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                  </p>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
                  <img src="{{ asset('main_assets/img/testimonials/testimonials-5.jpg') }}" class="testimonial-img" alt="">
                  <h3>Jerin Joe James ECE - Batch (2008 - 2012)</h3>
                  <h4>Software Quality Assurance Engineer <br/> CSC India</h4>
                  <p>
                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                    RGCE is the perfect place for those who wish to be an Engineer. It is the place where different culture and traditions mingling together. Highly equipped Laboratories and Libraries are the treasures of knowledge for the students. And RGCE is always student friendly college by conducting Symposiums, Cultural events as well as Sports events during academic year. I was a day scholar. Transport was good and timely pick up and drop.
                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                  </p>
                </div>
              </div>
            </div><!-- End testimonial item -->

          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section><!-- End Testimonials Section -->



     <!-- ======= Contact Section ======= -->
     <section id="contact" class="contact">
      <div class="container">

        <div class="section-title">
          <h2>Contact</h2>
          <!-- <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p> -->
        </div>
      </div>

      <div>
        <iframe style="border:0; width: 100%; height: 350px;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3887.5401558699914!2d79.95834881474067!3d13.001237090836376!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a528d21da17d815%3A0x594cc464942e5f2e!2sRajiv%20Gandhi%20College%20of%20Engineering!5e0!3m2!1sen!2sbg!4v1657363317383!5m2!1sen!2sbg" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
      </div>

      
    </section><!-- End Contact Section -->


</main><!-- End #main -->

</div>
