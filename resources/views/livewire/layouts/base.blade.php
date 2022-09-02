<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Hugo 0.101.0">
  <title>Dashboard Template · Bootstrap v5.2</title>

  <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/dashboard/">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">

  <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />

  <link href="{{ asset('assets/jquery-ui/jquery-ui.min.css') }}" rel="stylesheet">
  <link href="{{ asset('assets/dist/css/bootstrap.min.css') }}" rel="stylesheet">
  <link href="{{ asset('assets/style.css') }}" rel="stylesheet">

  <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>

  @livewireStyles

  <!-- Custom styles for this template -->
  <link href="{{ asset('assets/style.css') }}" rel="stylesheet">

  @stack('styles')
</head>

<body>

  <livewire:components.navbar />

  <div class="container-fluid">
    <div class="row">

      <livewire:components.sidebar />

      <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
        {{ $slot }}
      </main>
    </div>
  </div>

  <script src="{{ asset('assets/dist/js/bootstrap.bundle.min.js') }}"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"></script>

  <script src="{{ asset('assets/jquery-ui/jquery-ui.min.js') }}"></script>
  <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

  <!-- <script src="{{ asset('assets/dist/js/Chart.min.js') }}"></script> -->
  <script src="{{ asset('assets/script.js') }}"></script>

  <script>
    feather.replace()
  </script>
  <script src="https://cdn.ckeditor.com/ckeditor5/35.0.1/classic/ckeditor.js"></script>



  @livewireScripts
  @stack('js')
</body>

</html>