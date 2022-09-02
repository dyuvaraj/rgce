<div>
    <!-- ======= Top Bar ======= -->
  <div id="topbar" class="d-flex align-items-center fixed-top">
    <div class="container d-flex justify-content-between">
      <div class="contact-info d-flex align-items-center">
        <i class="bi bi-envelope"></i> <a href="mailto:contact@example.com">principal@rgce.edu.in</a>
        <i class="bi bi-phone"></i> +91 94442 07399
      </div>
      <div class="d-none d-lg-flex social-links align-items-center">
        <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
        <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
        <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
        <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
      </div>
    </div>
  </div>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="{{ url('/') }}"><img src="{{ asset('main_assets/img/logo.png') }}" /></a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto active" href="{{ url('/') }}">Home</a></li>
          <li class="dropdown"><a class="nav-link scrollto" href="#about">About RGCE <i class="bi bi-chevron-down"></i></a>        
            <ul>
                <li><a href="{{ url('/college') }}">The College</a></li>
                <li><a href="{{ url('/management') }}">Management</a></li>
                <li><a href="{{ url('/chairman') }}">Chairman</a></li>
                <li><a href="{{ url('/secretary') }}">Secretary</a></li>
                <li><a href="{{ url('/principal') }}">Principal</a></li>
                <li><a href="{{ url('/advisor') }}">Advisor</a></li>
                <li><a href="{{ url('/council') }}">Council</a></li>
                <li><a href="{{ url('/feature') }}">Features</a></li>
              </ul>
          </li>
          <li class="dropdown"><a class="nav-link scrollto" href="#about">Admission <i class="bi bi-chevron-down"></i></a>        
            <ul>
                <li><a href="{{ url('/admission') }}">Admission</a></li>
                <li><a href="{{ url('/scholarship') }}">Scholarship</a></li>
                <!-- <li><a href="#">Enquiry</a></li> -->
            </ul>
          </li>
          <li class="dropdown"><a class="nav-link scrollto" href="#about">Courses <i class="bi bi-chevron-down"></i></a>        
            <ul>
                <li><a href="{{ url('/course/ug') }}">Undergraduate</a></li>
                <li><a href="{{ url('/course/pg') }}">Postgraduate</a></li>
            </ul>
          </li>
          <!-- <li><a class="nav-link scrollto" href="#doctors">Departments</a></li> -->
          <li><a class="nav-link scrollto" href="{{ url('/placement') }}">Placements</a></li>
          <li class="dropdown"><a href="#"><span>More</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="{{ url('/gallery') }}"><span>Gallery & Events</span></i></a>
                <!-- <ul>
                  <li><a href="#">Events</a></li>
                </ul> -->
              </li>
              <li class="dropdown"><a href="#"><span>Achivements</span> <i class="bi bi-chevron-right"></i></a>
                <ul>
                    <li><a href="#">Awards</a></li>
                    <li><a href="{{ url('/university-rankers') }}">University Rankers</a></li>
                </ul>
              </li>
              <li><a class="nav-link scrollto" href="{{ url('/amenities') }}">Amenities</a></li>
              <!-- <li><a class="nav-link scrollto" href="#doctors">Archives</a></li> -->
            </ul>
          </li>
          <li><a class="nav-link scrollto" href="{{ url('/contact-us') }}">Contact us</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <a href="#appointment" class="appointment-btn scrollto" type="button" data-bs-toggle="modal" data-bs-target="#exampleModal"><span class="d-none d-md-inline">Enquire for</span> Admission</a>
      
      
      
    </div>
  </header><!-- End Header -->

  <!-- Enquiry Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <form action="#" class="php-email-form">
            <div class="modal-dialog">
                <div class="modal-content">

                    <div class="modal-body">

                        <!-- ======= Contact Section ======= -->
                        <section id="contact" class="contact">
                            <div class="container">

                                <div class="container">
                                    <div class="row ">

                                        <div class="col">

                                            <h5 class="modal-title" id="exampleModalLabel" style="text-align:center; font-weight:600;">Admission Enquiry Form</h5>

                                            <div class="row">
                                                <div class="form-group mt-3">
                                                    <input type="text" name="name" class="form-control" id="name" placeholder="Name" wire:model="name" required>
                                                    @error("name")
                                                    <span class="text-danger"> {{$message}} </span>
                                                    @enderror
                                                </div>
                                                <div class="form-group mt-3">
                                                    <input type="text" class="form-control" name="phone_no" id="phone_no" placeholder="Phone no" wire:model="phone_no" required>
                                                    @error("phone_no")
                                                    <span class="text-danger"> {{$message}} </span>
                                                    @enderror
                                                </div>
                                                <div class="form-group mt-3">
                                                    <input type="email" class="form-control" name="email" id="email" placeholder="Email" wire:model="email" required>
                                                    @error("email")
                                                    <span class="text-danger"> {{$message}} </span>
                                                    @enderror
                                                </div>
                                            </div>
                                            <div class="form-group mt-3">
                                                <select class="form-select" aria-label="Default select example" wire:model="type">
                                                    <option value=0>Select Type</option>
                                                    @foreach ($lead_type as $i => $data)
                                                        <option value="{{$data}}">{{$data}}</option>
                                                    @endforeach
                                                </select>
                                                @error("type")
                                                <span class="text-danger"> {{$message}} </span>
                                                @enderror
                                            </div>
                                            
                                            <div class="form-group mt-3">
                                                <textarea class="form-control" name="description" rows="5" placeholder="Description" required wire:model="description"></textarea>
                                                @error("description")
                                                <span class="text-danger"> {{$message}} </span>
                                                @enderror
                                            </div>

                                            <!-- <div class="my-3">
                                                <div class="loading">Loading</div>
                                                <div class="error-message"></div>
                                                <div class="sent-message">Your message has been sent. Thank you!</div>
                                            </div> -->

                                        </div>

                                    </div>

                                </div>
                        </section><!-- End Contact Section -->


                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" style="font-size: 16px; padding: 0 20px; transition: 0.3s; border-radius: 50px; height: 40px;">Close</button>
                        <button wire:model.click="store" type="submit" class="btn btn-primary" style="font-size: 16px; padding: 0 20px; background: #C32621; color: #fff; transition: 0.3s; border-radius: 50px; height: 40px;">Submit Enquiry</button>
                    </div>

                </div>
            </div>
        </form>
    </div>

  
</div>