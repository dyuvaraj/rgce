<div>
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Course Image</h1>
      </div>

      @if(session()->has('message'))
        <div class="alert alert-success text-center">{{ session('message') }}</div>
      @endif

      <div class="card text-bg-light">
        
        <div class="card-body">
          <h5 class="card-title"></h5>

          <form wire:submit.prevent="{{$submit}}" class="row g-3">

            <div class="col-md-12">
              <input class="form-check-input" type="checkbox" value="" id="course_banner" wire:model="course_banner">
              <label class="form-check-label" for="course_banner">
                Course Banner
              </label>
            </div>

            <div class="col-md-6">
              <label for="title" class="form-label">Select Course</label>

              <select class="form-select" aria-label="Default select example" wire:model="course_id">
                <option value=0 >Select Course</option>
                @foreach ($courses as $i => $data)
                    <option value="{{$data->id}}">{{$data->degree.' - '.$data->specialization}}</option>
                @endforeach
              </select>
              @error("course_id")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>

            <div class="col-md-6">
              <label for="course_image" class="form-label">Course Images</label>
              <input class="form-control" type="file" id="course_image" wire:model="course_image" multiple>
              @error("course_image.*")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>

            <div class="col-12">
              <button type="submit" class="btn btn-primary">Add</button>
            </div>

          </form>
        </div>
      </div>
     
</div>

