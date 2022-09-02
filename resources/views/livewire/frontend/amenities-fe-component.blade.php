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
        <h2>Amenities</h2>
      </div>

      <div class="row">

        <div class="d-flex align-items-start">
          <div class="nav flex-column nav-pills me-5 col-md-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
            <button class="nav-link active mb-2" id="v-pills-library-tab" data-bs-toggle="pill" data-bs-target="#v-pills-library"
              type="button" role="tab" aria-controls="v-pills-library" aria-selected="true">Library</button>
            <button class="nav-link mb-2" id="v-pills-auditorium-tab" data-bs-toggle="pill" data-bs-target="#v-pills-auditorium"
              type="button" role="tab" aria-controls="v-pills-auditorium" aria-selected="false">Auditorium</button>
            <button class="nav-link mb-2" id="v-pills-clinic-tab" data-bs-toggle="pill" data-bs-target="#v-pills-clinic"
              type="button" role="tab" aria-controls="v-pills-clinic" aria-selected="false">Clinic</button>
            <button class="nav-link mb-2" id="v-pills-clubs-tab" data-bs-toggle="pill" data-bs-target="#v-pills-clubs"
              type="button" role="tab" aria-controls="v-pills-clubs" aria-selected="false">Clubs</button>
            <button class="nav-link mb-2" id="v-pills-cybercafe-tab" data-bs-toggle="pill" data-bs-target="#v-pills-cybercafe"
              type="button" role="tab" aria-controls="v-pills-cybercafe" aria-selected="false">Cyber Cafe</button>
            <button class="nav-link mb-2" id="v-pills-gymnasium-tab" data-bs-toggle="pill" data-bs-target="#v-pills-gymnasium"
              type="button" role="tab" aria-controls="v-pills-gymnasium" aria-selected="false">Gymnasium</button>
            <button class="nav-link mb-2" id="v-pills-atm-tab" data-bs-toggle="pill" data-bs-target="#v-pills-atm"
              type="button" role="tab" aria-controls="v-pills-atm" aria-selected="false">ATM</button>
            <button class="nav-link mb-2" id="v-pills-canteen-tab" data-bs-toggle="pill" data-bs-target="#v-pills-canteen"
              type="button" role="tab" aria-controls="v-pills-canteen" aria-selected="false">Canteen</button>
            <button class="nav-link mb-2" id="v-pills-traning-tab" data-bs-toggle="pill" data-bs-target="#v-pills-traning"
              type="button" role="tab" aria-controls="v-pills-traning" aria-selected="false">Traning</button>
            <button class="nav-link mb-2" id="v-pills-hostel-tab" data-bs-toggle="pill" data-bs-target="#v-pills-hostel"
              type="button" role="tab" aria-controls="v-pills-hostel" aria-selected="false">Hostel</button>
            <button class="nav-link mb-2" id="v-pills-transport-tab" data-bs-toggle="pill" data-bs-target="#v-pills-transport"
              type="button" role="tab" aria-controls="v-pills-transport" aria-selected="false">Transport</button>
            <button class="nav-link mb-2" id="v-pills-sports-tab" data-bs-toggle="pill" data-bs-target="#v-pills-sports"
              type="button" role="tab" aria-controls="v-pills-sports" aria-selected="false">Sports</button>            
          </div>
          <div class="tab-content" id="v-pills-tabContent">
            <div class="tab-pane fade show active" id="v-pills-library" role="tabpanel" aria-labelledby="v-pills-library-tab" tabindex="0">

              <div class="section-title">
                <h2>Library- Let your mind wander </h2>
              </div>

              <figure class="figure">
                <img src="{{ asset('main_assets/img/main/amenities/library.png') }}" class="figure-img img-fluid text rounded" alt="...">
                <figcaption class="figure-caption">Library</figcaption>
              </figure>

              <p>It is the place for major reference and research, responsible for collecting and developing knowledge. The college library functions for the benefit of the students and staff. The library is accessible to students from 8am to 8pm from Monday to Friday. The books are available in all disciplines and it is being continuously expanded by procuring latest volumes every year. E-Journal facilities are also available to fulfill the needs of students and staff.</p>

            </div>
            <div class="tab-pane fade" id="v-pills-auditorium" role="tabpanel" aria-labelledby="v-pills-auditorium-tab" tabindex="0">
              
              <div class="section-title">
                <h2>Auditorium-Deep thoughts to action</h2>
              </div>

              <figure class="figure">
                <img src="{{ asset('main_assets/img/main/amenities/auditorium.png') }}" class="figure-img img-fluid text rounded" alt="...">
                <figcaption class="figure-caption">Auditorium</figcaption>
              </figure>

              <p>A vibrant learning experience is about more than just classroom sessions. Guest lectures, symposia, seminars and conferences expose students to key insights, new ideas and a chance to engage with peers and experts in discussion and debate.</p>
              <p>The College auditorium is fully furnished with modern equipments such as multimedia projectors and high quality sound systems. It has large lobby and veranda, which are ideal venues for conferences and exhibitions.</p>
              <p>An Open-Air auditorium is also available for students to perform various seminar and symposium and cultural events.</p>

            </div>
            <div class="tab-pane fade" id="v-pills-clinic" role="tabpanel" aria-labelledby="v-pills-clinic-tab" tabindex="0">
              
              <div class="section-title">
                <h2>Clinic - Health and wellbeing</h2>
              </div>

              <figure class="figure">
                <img src="{{ asset('main_assets/img/main/amenities/clinic.png') }}" class="figure-img img-fluid text rounded" alt="...">
                <figcaption class="figure-caption">Clinic</figcaption>
              </figure>

              <p>The college has a clinic which is open throughout the day for the health and wellbeing of students and staffs. Service of doctors is available at the clinic assisted by a resident nurse.Counselling Services are also available which helps students with personal, living, study or work related concerns.</p>

            </div>
            <div class="tab-pane fade" id="v-pills-clubs" role="tabpanel" aria-labelledby="v-pills-clubs-tab" tabindex="0">
              
              <div class="section-title">
                <h2>Clubs – Get Involved</h2>
              </div>

              <p>Get involved with campus events, clubs and societies, social programs, and personal development. The college has clubs such as Rajiv Gandhi College Communication Club and Tamil Mandram. Through these Clubs we also offer a number of ‘‘Super-learning’’ days throughout the year, focusing on creative writing and learning, mass communication and awareness rally for the public cause. The NSS and Youth Red Cross team are also actively participating in public service. The department of Biomedical Engineering also joins hands with them to organize blood donation camps and rural medical camps.</p>

            </div>
              <div class="tab-pane fade" id="v-pills-cybercafe" role="tabpanel" aria-labelledby="v-pills-cybercafe-tab" tabindex="0">
                
                <div class="section-title">
                  <h2>Cyber cafe – world in your hand</h2>
                </div>
  
                <p>The college has round the clock high speed internet café for the students and staff. Students and faculty are allowed to access internet after the regular working hours. This helps the students to prepare papers on the latest technologies to be presented in various symposium and seminars. A variety of software is also made available to the students and the users.</p>

                
              </div>
              <div class="tab-pane fade" id="v-pills-gymnasium" role="tabpanel" aria-labelledby="v-pills-gymnasium-tab" tabindex="0">
                
                <div class="section-title">
                  <h2>Gymnasium – Stay healthier</h2>
                </div>
  
                <p>State of art gymnasium facility is available in the campus for the students and staffs. Trained recreation staff members are available to offer assistance with all of the equipment. Just contact the equipment room for more details, and get on the road to good health today.</p>

              </div>
              <div class="tab-pane fade" id="v-pills-atm" role="tabpanel" aria-labelledby="v-pills-atm-tab" tabindex="0">
                
                <div class="section-title">
                  <h2>ATM – Any time Money </h2>
                </div>
  
                <figure class="figure">
                  <img src="{{ asset('main_assets/img/main/amenities/atm.png') }}" class="figure-img img-fluid text rounded" alt="...">
                  <figcaption class="figure-caption">ATM</figcaption>
                </figure>
  
                <p>Punjab National Banks ATM facility is available 24hours in the campus for students and staffs.</p>

              </div>
              <div class="tab-pane fade" id="v-pills-canteen" role="tabpanel" aria-labelledby="v-pills-canteen-tab" tabindex="0">
                
                <div class="section-title">
                  <h2>CANTEEN–destination for your hunger</h2>
                </div>
  
                <figure class="figure">
                  <img src="{{ asset('main_assets/img/main/amenities/atm.png') }}" class="figure-img img-fluid text rounded" alt="...">
                  <figcaption class="figure-caption">Canteen</figcaption>
                </figure>
  
                <p>College canteen is open from 8 am to 9 pm on every day. Separate sections for boys and girls are available.</p>

              </div>
              <div class="tab-pane fade" id="v-pills-traning" role="tabpanel" aria-labelledby="v-pills-traning-tab" tabindex="0">
              
                <div class="section-title">
                  <h2>TRAINING – IMPROVE YOUR SKILLS</h2>
                </div>
  
                <figure class="figure">
                  <img src="{{ asset('main_assets/img/main/amenities/training.png') }}" class="figure-img img-fluid text rounded" alt="...">
                  <figcaption class="figure-caption">Training</figcaption>
                </figure>
  
                <p>The college provides personality development and soft skill training for all students through professionals. As you finish your degree program, you may be looking for ways to build leadership potential as you gain experience in your field. The training helps to develop leadership qualities as well as qualities to work in a team.</p>

              </div>
              <div class="tab-pane fade" id="v-pills-hostel" role="tabpanel" aria-labelledby="v-pills-hostel-tab" tabindex="0">
                
                <div class="section-title">
                  <h2>HOSTEL – HOME AWAY FROM HOME</h2>
                </div>
  
                <figure class="figure">
                  <img src="{{ asset('main_assets/img/main/amenities/hostel.png') }}" class="figure-img img-fluid text rounded" alt="...">
                  <figcaption class="figure-caption">Hostel</figcaption>
                </figure>
  
                <p>The college provides hostel facility for boys and girls. Individual cots, cupboards, tables, chairs are available for inmates. Easy access to library, Canteen and computer facilities is possible during leisure hours. A standby generator set to ensure uninterrupted power supply to the hostellers is made available. The hostel provides an ideal ambience with a quiet rural backdrop to make the inmates feel at home and take to serious study in a quiet and serene atmosphere. Separate canteen dining halls are available with a combined capacity of 500 for both boys and girls.</p>

              </div>
              <div class="tab-pane fade" id="v-pills-transport" role="tabpanel" aria-labelledby="v-pills-transport-tab" tabindex="0">

                <div class="section-title">
                  <h2>TRANSPORT – ON THE MOVE</h2>
                </div>
  
                <figure class="figure">
                  <img src="{{ asset('main_assets/img/main/amenities/transport.png') }}" class="figure-img img-fluid text rounded" alt="...">
                  <figcaption class="figure-caption">Transport</figcaption>
                </figure>
  
                <p>The college maintains a fleet of buses for the benefit of students and staff. The buses are operated by experienced crew members in such a way to cover the entire city. Resident students and staff can use College transport facility during weekends.</p>

              </div>
              <div class="tab-pane fade" id="v-pills-sports" role="tabpanel" aria-labelledby="v-pills-settings-sports" tabindex="0">
                
                <div class="section-title">
                  <h2>SPORTS – GAME FOR LIFE</h2>
                </div>
  
                <figure class="figure">
                  <img src="{{ asset('main_assets/img/main/amenities/sports.png') }}" class="figure-img img-fluid text rounded" alt="...">
                  <figcaption class="figure-caption">Sports</figcaption>
                </figure>
  
                <p>The Sports and Recreational Activities offer a wide variety of programs for students that promote wellness and enhance lifelong skills. Extra-curricular activities are essential, and our goal is to provide you with the opportunity for physical activity, healthy competition, and introduction to a number of lifetime wellness and leisure activities.</p>

              </div>
          </div>
        </div>

      </div>



    </section>
    

  </main>
</div>
