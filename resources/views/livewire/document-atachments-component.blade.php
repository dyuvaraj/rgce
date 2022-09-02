<div>
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Document Attachment</h1>
      </div>

      @if(session()->has('message'))
        <div class="alert alert-success text-center">{{ session('message') }}</div>
      @endif

      <div class="card text-bg-light">
        
        <div class="card-body">
          <h5 class="card-title"></h5>

          <form wire:submit.prevent="{{$submit}}" class="row g-3">
            <div class="col-md-6">
              <label for="document_id" class="form-label">Select Document</label>

              <select class="form-select" aria-label="Default select example" wire:model="document_id">
                <option value=0 >Select Document</option>
                @foreach ($documents as $i => $data)
                    <option value="{{$data->id}}">{{$data->document_name}}</option>
                @endforeach
              </select>
              @error("document_id")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>
            
            <div class="col-md-6">
              <label for="file" class="form-label">Document Attachments</label>
              <input class="form-control" type="file" id="file" wire:model="file" multiple>
              @error("file.*")
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

