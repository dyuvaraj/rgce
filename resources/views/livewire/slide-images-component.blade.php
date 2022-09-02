<div>
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Slide Image</h1>
      </div>

      @if(session()->has('message'))
        <div class="alert alert-success text-center">{{ session('message') }}</div>
      @endif

      <div class="card text-bg-light">
        
        <div class="card-body">
          <h5 class="card-title"></h5>

          <form wire:submit.prevent="{{$submit}}" class="row g-3">
            <div class="col-md-6">
              <label for="slide_id" class="form-label">Select Slide</label>

              <select class="form-select" aria-label="Default select example" wire:model="slide_id">
                <option value=0 >Select Slide</option>
                @foreach ($slides as $i => $data)
                    <option value="{{$data->id}}">{{$data->slide_name}}</option>
                @endforeach
              </select>
              @error("slide_id")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>

            <div class="col-md-6">
              <label for="slide_image" class="form-label">Slide Images</label>
              <input class="form-control" type="file" id="slide_image" wire:model="slide_image" multiple>
              @error("slide_image.*")
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

