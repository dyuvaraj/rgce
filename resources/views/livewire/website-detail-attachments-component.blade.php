<div>
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Webpage Attachments</h1>
      </div>

      @if(session()->has('message'))
        <div class="alert alert-success text-center">{{ session('message') }}</div>
      @endif

      <div class="card text-bg-light">
        
        <div class="card-body">
          <h5 class="card-title"></h5>

          <form wire:submit.prevent="{{$submit}}" class="row g-3">

            <div class="col-md-6">
              <label for="web_page_id" class="form-label">Select Page</label>

              <select class="form-select" aria-label="Default select example" wire:change="$emit('getDetailPages')" wire:model="web_page_id">
                <option value=0 >Select Page</option>
                @foreach ($web_pages as $i => $data)
                    <option value="{{$data->id}}">{{$data->page}}</option>
                @endforeach
              </select>
              @error("web_page_id")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>

            <div class="col-md-6">
              <label for="website_detail_id" class="form-label">Select Page Details</label>

              <select class="form-select" aria-label="Default select example" wire:model="website_detail_id">
                <option value=0 >Select Page</option>
                @foreach ($website_details as $i => $data)
                    <option value="{{$data->id}}">{{$data->container}}</option>
                @endforeach
              </select>
              @error("website_detail_id")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>

            <!-- <div class="col-md-6">
              <label for="description" class="form-label">Description</label>
              <input type="text" class="form-control" id="container" placeholder="Description" wire:model="description">
              @error("description")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div> -->

            <div class="col-md-6">
              <label for="attachment" class="form-label">Attachment</label>
              <input class="form-control" type="file" id="attachment" wire:model="attachment" multiple>
              @error("attachment.*")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>
            
            <div class="col-12">
              <button type="submit" class="btn btn-primary">{{$submit_btn}}</button>
            </div>
          </form>
        </div>
      </div>

      
</div>