<div>
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Course Images Edit</h1>
      </div>

      @if(session()->has('message'))
        <div class="alert alert-success text-center">{{ session('message') }}</div>
      @endif

      @if($course_image_id)

      <div class="card text-bg-light">
        
        <div class="card-body">
          <h5 class="card-title"></h5>

          <form wire:submit.prevent="update" class="row g-3">
            
            <div class="col-md-6">
              <input class="form-check-input" type="checkbox" value="" id="course_banner" wire:model="course_banner">
              <label class="form-check-label" for="course_banner">
                Course Banner
              </label>
            </div>

            <div class="col-md-6">
              <label for="description" class="form-label">Description</label>
              <textarea class="form-control" id="description" placeholder="Description" wire:model="description"></textarea>
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
              <th scope="col">Course & Specialization</th>
              <th scope="col">Description</th>
              <th scope="col">Course Image</th>
              <th scope="col" width="10%">Action</th>
            </tr>
          </thead>
          <tbody>

            @if ($course_images->count() > 0)
                @foreach ($course_images as $i => $data)
                    <tr>
                        <td>{{ $i+1 }}</td>
                        <td>{{ $data->course->degree.' - '.$data->course->specialization }}</td>
                        <td>{{ $data->description }}</td>
                        <td>
                        <?php 
                                if($data->course_image) {
                            ?>
                                <img height="100px" src="{{ asset('storage/'.$data->course_image) }}" />
                            <?php
                                }
                            ?>
                        </td>                        
                        <td>
                            <button type="button" class="btn btn-primary btn-sm" id="edit_btn" wire:click="edit({{$data->id}})"><i class="bi bi-pencil"></i></button>
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
     
{{ $course_images->links('livewire.components.pagination-links-view') }}

</div>
