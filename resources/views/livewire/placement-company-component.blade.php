<div>
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Placement Companies</h1>
      </div>

      @if(session()->has('message'))
        <div class="alert alert-success text-center">{{ session('message') }}</div>
      @endif

      <div class="card text-bg-light">
        
        <div class="card-body">
          <h5 class="card-title"></h5>

          <form wire:submit.prevent="{{$submit}}" class="row g-3">

            <div class="col-md-12">
              <input class="form-check-input" type="checkbox" value="" id="highlight" wire:model="highlight">
              <label class="form-check-label" for="highlight">
                Highlight
              </label>
            </div>

            <div class="col-md-6">
              <label for="company_name" class="form-label">Company Name</label>
              <input type="company_name" class="form-control" id="company_name" placeholder="Company Name" wire:model="company_name">
              @error("company_name")
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

            <div class="col-md-6">
              <label for="company_image" class="form-label">Company Image/File</label>
              <input class="form-control" type="file" id="company_image" wire:model="company_image">
            </div>

            @if($company_image_src)
            <div class="col-md-6">
              <div class="card" style="width: 18rem;">
                <img src="{{ asset('storage/'.$company_image_src) }}" class="card-img-top" alt="...">
                <div class="card-body">
                <button type="button" class="btn btn-danger btn-sm" wire:click="delete_image({{$company_id}})"><i class="bi bi-trash3"></i></button>
                </div>
              </div>
            </div>
            @endif
            
            <div class="col-12">
              <button type="submit" class="btn btn-primary">{{$submit_btn}}</button>
            </div>

          </form>
        </div>
      </div>

      <br/><br/>
      <!-- <h2>Section title</h2> -->
      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <thead class="table-dark">
            <tr>
              <th scope="col">#</th>
              <th scope="col">Company Name</th>
              <th scope="col">Description</th>
              <th scope="col">Image</th>
              <th scope="col">Status</th>
              <th scope="col" width="10%">Action</th>
            </tr>
          </thead>
          <tbody>

            @if ($placement_companies->count() > 0)
                @foreach ($placement_companies as $i => $data)
                    <tr>
                        <td>{{ $i+1 }}</td>
                        <td>{{ $data->company_name }}</td>
                        <td>{{ $data->description }}</td>
                        <td>
                            <?php 
                                if($data->company_image) {
                            ?>
                                <img height="100px" src="{{ asset('storage/'.$data->company_image) }}" />
                            <?php
                                }
                            ?>
                        </td>
                        <td>
                        <div class="form-check form-switch">
                          <input class="form-check-input" type="checkbox" role="switch" id="status" <?= $data->status ? "checked" : '' ?> wire:click="update_status({{$data->id}}, {{$data->status}})">
                        </div>
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

{{ $placement_companies->links('livewire.components.pagination-links-view') }}