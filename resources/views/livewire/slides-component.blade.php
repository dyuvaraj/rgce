<div>
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Slide</h1>
      </div>

      @if(session()->has('message'))
        <div class="alert alert-success text-center">{{ session('message') }}</div>
      @endif

      <div class="card text-bg-light">
        
        <div class="card-body">
          <h5 class="card-title"></h5>

          <form wire:submit.prevent="{{$submit}}" class="row g-3">

            <div class="col-md-6">
              <label for="slide_name" class="form-label">Slide Name</label> {{$slide_name}}
              <input type="text" class="form-control" id="slide_name" placeholder="Slide Name" wire:model="slide_name">
              @error("slide_name")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>

            <div class="col-12">
              <button type="submit" class="btn btn-primary">{{$submit_btn}}</button>
            </div>

          </form>
        </div>
      </div>

      <br/><br/>
      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <thead class="table-dark">
            <tr>
              <th scope="col">#</th>
              <th scope="col">Slide Name</th>
              <th scope="col">Status</th>
              <th scope="col" width="10%">Action</th>
            </tr>
          </thead>
          <tbody>

            @if ($slides->count() > 0)
                @foreach ($slides as $i => $data)
                    <tr>
                        <td>{{ $i+1 }}</td>
                        <td>{{ $data->slide_name }}</td>
                        <td>
                            <div class="form-check form-switch">
                                <input class="form-check-input" type="checkbox" role="switch" id="status" <?= $data->status ? "checked" : '' ?> wire:click="update_status({{$data->id}}, {{$data->status}})">
                            </div>
                        </td>
                        <td>                            
                            <a type="button" class="btn btn-primary btn-sm" href="{{ url('admin/slide_image/'.$data->id) }}"><i class="bi bi-image"></i></a>
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

{{ $slides->links('livewire.components.pagination-links-view') }}