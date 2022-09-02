<div>
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Slide Images Edit</h1>
      </div>

      @if(session()->has('message'))
        <div class="alert alert-success text-center">{{ session('message') }}</div>
      @endif

      @if($slide_image_id)

      <div class="card text-bg-light">
        
        <div class="card-body">
          <h5 class="card-title"></h5>

          <form wire:submit.prevent="update" class="row g-3">
            

            <div class="col-md-6">
              <label for="title" class="form-label">Title</label>
              <input type="text" class="form-control" id="title" placeholder="Title" wire:model="title" />
              @error("title")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>

            <div class="col-md-6">
              <label for="description" class="form-label">Description</label>
              <textarea type="text" class="form-control" id="description" placeholder="Description" wire:model="description"></textarea>
              @error("description")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>
            
            
            <div class="col-12">
              <button type="submit" class="btn btn-primary">Update</button>
            </div>
          </form>
        </div>
      </div>
      @endif

      <br/><br/>
      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <thead class="table-dark">
            <tr>
              <th scope="col">#</th>
              <th scope="col">Slide</th>
              <th scope="col">Title</th>
              <th scope="col">Description</th>
              <th scope="col">Slide Image</th>
              <th scope="col" width="10%">Action</th>
            </tr>
          </thead>
          <tbody>

            @if ($slide_images->count() > 0)
                @foreach ($slide_images as $i => $data)
                    <tr>
                        <td>{{ $i+1 }}</td>
                        <td>{{ $data->slide->slide_name }}</td>
                        <td>{{ $data->title }}</td>
                        <td>{{ $data->description }}</td>
                        <td>
                        <?php 
                                if($data->slide_image) {
                            ?>
                                <img height="100px" src="{{ asset('storage/'.$data->slide_image) }}" />
                            <?php
                                }
                            ?>
                        </td>                        
                        <td>
                            <button type="button" class="btn btn-primary btn-sm" wire:click="edit({{$data->id}})"><i class="bi bi-pencil"></i></button>
                            <button type="button" class="btn btn-danger btn-sm" wire:click="delete({{$data->id}})"><i class="bi bi-trash3"></i></button>
                        </td>
                    </tr>
                @endforeach
            @else
                <tr>
                    <td colspan="5" style="text-align: center;"><small>No Data Found</small></td>
                </tr>
            @endif
            
          </tbody>
        </table>
      </div>
     
</div>

{{ $slide_images->links('livewire.components.pagination-links-view') }}