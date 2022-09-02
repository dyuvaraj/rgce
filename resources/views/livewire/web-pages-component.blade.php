<div>
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Webpages</h1>
      </div>

      @if(session()->has('message'))
        <div class="alert alert-success text-center">{{ session('message') }}</div>
      @endif

      <div class="card text-bg-light">
        
        <div class="card-body">
          <h5 class="card-title"></h5>

          <form wire:submit.prevent="{{$submit}}" class="row g-3">

            <div class="col-md-6">
              <label for="page" class="form-label">Page</label>
              <input type="text" class="form-control" id="page" placeholder="Page" wire:model="page">
              @error("page")
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
              <th scope="col">Page</th>
              <th scope="col" width="10%">Action</th>
            </tr>
          </thead>
          <tbody>

            @if ($pages->count() > 0)
                @foreach ($pages as $i => $data)
                    <tr>
                        <td>{{ $i+1 }}</td>
                        <td>{{ $data->page }}</td>
                        <td>
                            <button type="button" class="btn btn-primary btn-sm" wire:click="edit({{$data->id}})"><i class="bi bi-pencil"></i></button>
                            <button type="button" class="btn btn-danger btn-sm"><i class="bi bi-trash3"></i></button>
                        </td>
                    </tr>
                @endforeach
            @else
                <tr>
                    <td colspan="7" style="text-align: center;"><small>No Data Found</small></td>
                </tr>
            @endif
            
          </tbody>
        </table>
      </div>
</div>