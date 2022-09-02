<div>
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Webpage Attachment Edit</h1>
      </div>

      @if(session()->has('message'))
        <div class="alert alert-success text-center">{{ session('message') }}</div>
      @endif

      @if($website_detail_att_id)

      <div class="card text-bg-light">
        
        <div class="card-body">
          <h5 class="card-title"></h5>

          <form wire:submit.prevent="update" class="row g-3">
            
          <div class="col-md-6">
              <label for="title" class="form-label">Title</label>
              <input type="text" class="form-control" id="title" placeholder="Title" wire:model="title">
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
              <th scope="col">Page</th>
              <th scope="col">Page Details</th>
              <th scope="col">Title</th>
              <th scope="col">Description</th>
              <th scope="col">Attachment</th>
              <th scope="col" width="10%">Action</th>
            </tr>
          </thead>
          <tbody>

            @if ($website_detail_attachments->count() > 0)
                @foreach ($website_detail_attachments as $i => $data)
                    <tr>
                        <td>{{ $i+1 }}</td>
                        <td>{{ $data->web_page->page }}</td>
                        <td>{{ $data->website_detail->container }}</td>
                        <td>{{ $data->title }}</td>
                        <td>{!! $data->description !!}</td>
                        <td>{{ $data->attachment }}</td>
                        <td>
                            <a href="{{ route('admin.pagedetailatt.edit', $data->id) }}" type="button" class="btn btn-primary btn-sm" wire:click="edit({{$data->id}})"><i class="bi bi-pencil"></i></a>
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

{{ $website_detail_attachments->links('livewire.components.pagination-links-view') }}