<div>
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Scholarship</h1>
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
              <label for="scholarship_name" class="form-label">Scholarship Name</label>
              <input type="text" class="form-control" id="scholarship_name" placeholder="Scholarship Name" wire:model="scholarship_name">
              @error("scholarship_name")
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

            <div wire:ignore class="col-md-6">
              <label for="castes" class="form-label">Castes</label>
            
              <select class="form-select select2" name="caste[]" id="caste" wire:model="castes" multiple="multiple" placeholder="Select Caste">
                
              <option value="SC/ST" wire:key="SC/ST">SC/ST</option>
                <option value="MBC" wire:key="MBC">MBC</option>
                <option value="BC" wire:key="BC">BC</option>
                <option value="FC" wire:key="FC">FC</option>
              </select>

              @error("castes")
                <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>

            <div class="col-md-6">
              <label for="address" class="form-label">Address</label>
              <textarea type="text" class="form-control" id="address" placeholder="Address" wire:model="address"></textarea>
              @error("address")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>

            <div class="col-md-6">
              <label for="amount" class="form-label">Amount</label>
              <input type="text" class="form-control" id="amount" placeholder="Amount" wire:model="amount">
              @error("amount")
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
      <!-- <h2>Section title</h2> -->
      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <thead class="table-dark">
            <tr>
              <th scope="col">#</th>
              <th scope="col">Scholarship Name</th>
              <th scope="col">Description</th>
              <th scope="col">Address</th>
              <th scope="col">Amount</th>
              <th scope="col">Status</th>
              <th scope="col" width="10%">Action</th>
            </tr>
          </thead>
          <tbody>

            @if ($scholarships->count() > 0)
                @foreach ($scholarships as $i => $data)
                    <tr>
                        <td>{{ $i+1 }}</td>
                        <td>{{ $data->scholarship_name }}</td>
                        <td>{{ $data->description }}</td>
                        <td>{{ $data->address }}</td>
                        <td>{{ $data->amount }}</td>
                        
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

{{ $scholarships->links('livewire.components.pagination-links-view') }}


@push('js')

<script>

  $(document).ready(function () {

    $('.select2').select2().on('change', function() {

      @this.set('castes',  $(this).val());            
    });
  });


</script>

@endpush
