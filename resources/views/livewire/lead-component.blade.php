<div>
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Leads</h1>
      </div>

      @if(session()->has('message'))
        <div class="alert alert-success text-center">{{ session('message') }}</div>
      @endif

      <div class="card text-bg-light">
        
        <div class="card-body">
          <h5 class="card-title"></h5>

          <form wire:submit.prevent="{{$submit}}" class="row g-3">
            <div class="col-md-6">
              <label for="name" class="form-label">Name</label>
              <input type="text" class="form-control" id="name" placeholder="Name" wire:model="name">
              @error("name")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>
            <div class="col-md-6">
              <label for="email" class="form-label">Email</label>
              <input type="email" class="form-control" id="email" placeholder="Email" wire:model="email" />
              @error("email")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>
            <div class="col-md-6">
              <label for="email" class="form-label">Phone no</label>
              <input type="text" class="form-control" id="phone_no" placeholder="Phone no" wire:model="phone_no">
              @error("phone_no")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>
            <div class="col-md-6">
              <label for="email" class="form-label">Type</label>
              <select class="form-select" aria-label="Default select example" wire:model="type">
                <option value=0 >Select Type</option>
                @foreach ($lead_type as $i => $data)
                    <option value="{{$data}}">{{$data}}</option>
                @endforeach
              </select>
              @error("type")
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
              <button type="submit" class="btn btn-primary">Add</button>
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
              <th scope="col">Name</th>
              <th scope="col">Email</th>
              <th scope="col">Phone no</th>
              <th scope="col">Type</th>
              <th scope="col">Description</th>
              <th scope="col" width="10%">Action</th>
            </tr>
          </thead>
          <tbody>

            @if ($leads->count() > 0)
                @foreach ($leads as $i => $data)
                    <tr>
                        <td>{{ $i+1 }}</td>
                        <td>{{ $data->name }}</td>
                        <td>{{ $data->email }}</td>
                        <td>{{ $data->phone_no }}</td>
                        <td>{{ $data->type }}</td>
                        <td>{{ $data->description }}</td>
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