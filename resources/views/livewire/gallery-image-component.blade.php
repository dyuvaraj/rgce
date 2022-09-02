<div>
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Gallery Image</h1>
      </div>

      @if(session()->has('message'))
        <div class="alert alert-success text-center">{{ session('message') }}</div>
      @endif

      <div class="card text-bg-light">
        
        <div class="card-body">
          <h5 class="card-title"></h5>

          <form wire:submit.prevent="{{$submit}}" class="row g-3">
            <div class="col-md-6">
              <label for="title" class="form-label">Select Gallery</label>

              <select class="form-select" aria-label="Default select example" wire:model="gallery_id">
                <option value=0 >Select Gallery</option>
                @foreach ($galleries as $i => $data)
                    <option value="{{$data->id}}">{{$data->title}}</option>
                @endforeach
              </select>
              @error("gallery_id")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>
            <!-- <div class="col-md-6">
              <label for="description" class="form-label">Description</label>
              <textarea type="text" class="form-control" id="description" placeholder="Description" wire:model="description"></textarea>
              @error("description")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div> -->
            <div class="col-md-6">
              <label for="gallery_image" class="form-label">Gallery Images</label>
              <input class="form-control" type="file" id="gallery_image" wire:model="gallery_image" multiple>
              @error("gallery_image.*")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>
            <div class="col-12">
              <button type="submit" class="btn btn-primary">Add</button>
            </div>
          </form>
        </div>
      </div>

      <br/><br/>
      <div class="table-responsive">
        <!-- <table class="table table-striped table-sm">
          <thead class="table-dark">
            <tr>
              <th scope="col">#</th>
              <th scope="col">Gallery</th>
              <th scope="col">Description</th>
              <th scope="col">Gallery Image</th>
              <th scope="col" width="10%">Action</th>
            </tr>
          </thead>
          <tbody>

            @if ($gallery_images->count() > 0)
                @foreach ($gallery_images as $i => $data)
                    <tr>
                        <td>{{ $i+1 }}</td>
                        <td>{{$data->gallery->title}}</td>
                        <td>{{ $data->description }}</td>
                        <td></td>
                        
                        <td>
                            <button type="button" class="btn btn-primary btn-sm" wire:click="edit({{$data->id}})"><i class="bi bi-pencil"></i></button>
                            <button type="button" class="btn btn-danger btn-sm"><i class="bi bi-trash3"></i></button>
                        </td>
                    </tr>
                @endforeach
            @else
                <tr>
                    <td colspan="5" style="text-align: center;"><small>No Data Found</small></td>
                </tr>
            @endif
            
          </tbody>
        </table> -->
      </div>
     
</div>

