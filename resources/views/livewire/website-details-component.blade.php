<div>
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Webpage Details</h1>
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

              <select class="form-select" aria-label="Default select example" wire:model="web_page_id">
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
              <label for="container" class="form-label">Container</label>
              <input type="text" class="form-control" id="container" placeholder="Container" wire:model="container">
              @error("container")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>

            <div class="col-md-12" wire:ignore>
              <label for="description" class="form-label">Description</label>
              <textarea type="text" id="note" name="note" data-note="@this" class="form-control" id="description" placeholder="Description" wire:model="description">{!! $description !!}</textarea>
              @error("description")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>

            <div class="col-md-6">
              <label for="order" class="form-label">Order</label>
              <input type="number" class="form-control" id="order" placeholder="Order" wire:model="order">
              @error("order")
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
              <th scope="col">Page Name</th>
              <th scope="col">Container</th>
              <th scope="col">Description</th>
              <th scope="col">Order</th>
              <th scope="col" width="10%">Action</th>
            </tr>
          </thead>
          <tbody>

            @if ($website_details->count() > 0)
                @foreach ($website_details as $i => $data)
                    <tr>
                        <td>{{ $i+1 }}</td>
                        <td>{{ $data->web_page->page }}</td>
                        <td>{{ $data->container }}</td>
                        <td>{!! $data->description !!}</td>
                        <td>{{ $data->order }}</td>
                        <td>
                          <a type="button" class="btn btn-primary btn-sm" href="{{ url('admin/page_detail_attachment/'.$data->id) }}"><i class="bi bi-paperclip"></i></a>
                          <a href="{{ route('admin.pagedetail.edit', $data->id) }}" type="button" class="btn btn-primary btn-sm" wire:click="edit({{$data->id}})"><i class="bi bi-pencil"></i></a>
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

      @push('js')
      <script>
          
          ClassicEditor
          .create(document.querySelector('#note'))
          .then(editor => {

            editor.model.document.on('change:data', () => {
              let note = $('#note').data('note');
              eval(note).set('description', editor.getData());
            })
            
          })
          .catch(error => {
            console.error(error);
          });

          $( "#note" ).on( "click", function( event ) { ClassicEditor.create(document.querySelector('#note')) });

      </script>
      @endpush

</div>