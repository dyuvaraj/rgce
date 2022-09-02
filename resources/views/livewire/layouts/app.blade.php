<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="{{ asset('main_assets/vendor/fontawesome-free/css/all.min.css') }}" rel="stylesheet">
    <link href="{{ asset('main_assets/vendor/animate.css/animate.min.css') }}" rel="stylesheet">
    <link href="{{ asset('main_assets/vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('main_assets/vendor/bootstrap-icons/bootstrap-icons.css') }}" rel="stylesheet">
    <link href="{{ asset('main_assets/vendor/boxicons/css/boxicons.min.css') }}" rel="stylesheet">
    <link href="{{ asset('main_assets/vendor/glightbox/css/glightbox.min.css') }}" rel="stylesheet">
    <link href="{{ asset('main_assets/vendor/remixicon/remixicon.css') }}" rel="stylesheet">
    <link href="{{ asset('main_assets/vendor/swiper/swiper-bundle.min.css') }}" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link href="{{ asset('main_assets/vendor/slick/slick-theme.css') }}" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="{{ asset('main_assets/css/style.css') }}" rel="stylesheet">


    <title>Rajiv Gandhi College of ENgineering</title>
  </head>
  <body>

  <livewire:components.main-navbar />
  

 
  {{ $slot }}


  
    <!-- ======= Footer ======= -->
    <footer id="footer">

<div class="footer-top">
  <div class="container">
    <div class="row">

      <div class="col-lg-3 col-md-6 footer-contact">
        <h3>Rajiv Gandhi College of Engineering</h3>
        <p>
            Nemili, Sriperumbudur <br>
            Chennai - 602 105, Tamil Nadu, <br>
            India<br><br>
          <strong>Mobile:</strong> +91 94442 07399<br>
          <strong>Phone:</strong> + 91 - 44 - 4269 3949, 2619 4729<br>
          
          <strong>Email:</strong> principal@rgce.edu.in<br>
        </p>
      </div>

      <div class="col-lg-2 col-md-6 footer-links">
        <h4>Useful Links</h4>
        <ul>
          <li><i class="bx bx-chevron-right"></i> <a href="{{ url('/') }}">Home</a></li>
          <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
          <li><i class="bx bx-chevron-right"></i> <a href="#">Courses</a></li>
          <li><i class="bx bx-chevron-right"></i> <a href="#">Placements</a></li>
          <li><i class="bx bx-chevron-right"></i> <a href="#">Admission</a></li>
          <li><i class="bx bx-chevron-right"></i> <a href="#">Contact us</a></li>
        </ul>
      </div>
           
      <div class="col-lg-3 col-md-6 footer-links">
        <h4>Academic</h4>
        <ul>
          <li><i class="bx bx-chevron-right"></i> <a href="#">Departments</a></li>
          <li><i class="bx bx-chevron-right"></i> <a href="#">Admissions</a></li>
          <li><i class="bx bx-chevron-right"></i> <a href="#">Facilities</a></li>
          <li><i class="bx bx-chevron-right"></i> <a href="#">Research</a></li>
          <li><i class="bx bx-chevron-right"></i> <a href="#">Alumni</a></li>
        </ul>
      </div>

      <div class="col-lg-4 col-md-6 footer-newsletter">
        <h4>Join Our Newsletter</h4>
        <!-- <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p> -->
        <form action="" method="post">
          <input type="email" name="email"><input type="submit" value="Subscribe">
        </form>
      </div>

    </div>
  </div>
</div>

<div class="container d-md-flex py-4">

  <div class="me-md-auto text-center text-md-start">
    <div class="copyright">
      &copy; Copyright <strong><span>Rajiv Gandhi College of Engineering</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
      <!-- All the links in the footer should remain intact. -->
      <!-- You can delete the links only if you purchased the pro version. -->
      <!-- Licensing information: https://bootstrapmade.com/license/ -->
      <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/ -->
      <!-- Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a> -->
    </div>
  </div>
  <div class="social-links text-center text-md-right pt-3 pt-md-0">
    <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
    <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
    <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
    <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
    <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
  </div>
</div>
</footer><!-- End Footer -->



    

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <!-- Vendor JS Files -->
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script src="{{ asset('main_assets/vendor/purecounter/purecounter.js') }}"></script>
    <script src="{{ asset('main_assets/vendor/aos/aos.js') }}"></script>
    <script src="{{ asset('main_assets/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('main_assets/vendor/glightbox/js/glightbox.min.js') }}"></script>
    <script src="{{ asset('main_assets/vendor/isotope-layout/isotope.pkgd.min.js') }}"></script>
    <script src="{{ asset('main_assets/vendor/swiper/swiper-bundle.min.js') }}"></script>
    <!-- <script src="{{ asset('main_assets/vendor/php-email-form/validate.js') }}"></script>     -->
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->

    <!-- Template Main JS File -->
    <script src="{{ asset('main_assets/js/main.js') }}"></script>

    <script>
    
    $(document).ready(function(){
      $('.your-class').slick({
        slidesToShow: 6,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 2000,
      });
    });
  </script>

  </body>
</html>