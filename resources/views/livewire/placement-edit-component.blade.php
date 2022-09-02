<div>
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Placements</h1>
      </div>

      @if(session()->has('message'))
        <div class="alert alert-success text-center">{{ session('message') }}</div>
      @endif

      <div class="card text-bg-light">
        
        <div class="card-body">
          <h5 class="card-title"></h5>

          <form wire:submit.prevent="{{$submit}}" class="row g-3">

            <div class="col-md-6">
              <label for="placement_year" class="form-label">Placement Year</label>
              <select class="form-select" aria-label="Default select example" wire:model="placement_year">
                <option value=0 >Placement Year</option>
                @for ($i=1990; $i<= date("Y"); $i++)
                    <option value="{{$i}}">{{$i}}</option>
                @endfor
              </select>
              @error("course")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>

            <div class="col-md-6">
              <label for="course" class="form-label">Course</label>
              <select class="form-select" aria-label="Default select example" wire:model="course">
                <option value=0 >Select Course</option>
                @foreach ($courses as $i => $data)
                    <option value="{{$data->id}}">{{$data->degree.' '.$data->specialization}}</option>
                @endforeach
              </select>
              @error("course")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>

            <div wire:ignore class="col-md-6">
              <label for="companies" class="form-label">Companies</label>
            
              <select class="form-select select2" name="companies[]" id="companies" wire:model="companies" multiple="multiple" placeholder="Select Company">
                @foreach ($placement_companies as $i => $data)
                    <option value="{{$data->id}}">{{$data->company_name}}</option>
                @endforeach
              </select>

              @error("companies")
                <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>

            <div class="col-md-6">
              <label for="students_placed" class="form-label">Students Placed</label>
              <input type="number" class="form-control" id="students_placed" placeholder="Students Placed" wire:model="students_placed">
              @error("students_placed")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>
            
            <div class="col-12">
              <button type="submit" class="btn btn-primary">{{$submit_btn}}</button>
            </div>

          </form>
        </div>
      </div>


@push('styles')

<style type='text/css'>
  /* Style to hide Dates / Months */
  .ui-datepicker-calendar,.ui-datepicker-month { display: none; }
</style>

@endpush

@push('js')

<script>

  $(function() {

    
    function initSelect2() {
      $('.select2').select2();
    }

    var currentYear= new Date().getFullYear(); 

    // $('.select2').select2().on('load', function() {
    //     @this.set('companies',  @this.get('companies'));
    // });

    $('.select2').select2().on('click', function() {
        @this.set('companies',  @this.get('companies'));
    });


    $('.select2').select2().on('change', function() {
      @this.set('companies',  $(this).val());
    });


    });

</script>

@endpush


</div>
