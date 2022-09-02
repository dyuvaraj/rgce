<div>
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Document</h1>
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
              <label for="title" class="form-label">Document Name</label>
              <input type="text" class="form-control" id="document_name" placeholder="Document Name" wire:model="document_name">
              @error("title")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>

            <div class="col-md-12" wire:ignore>
              <label for="description" class="form-label">Description</label> 
              <textarea type="text" id="note" name="note" data-note="@this" class="form-control html_note" id="inputAddress" placeholder="Description" wire:model="description">{!! $description !!}</textarea>
              @error("description")
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
              <th scope="col">Document Name</th>
              <th scope="col">Description</th>
              <th scope="col">Status</th>
              <th scope="col" width="10%">Action</th>
            </tr>
          </thead>
          <tbody>

            @if ($documents->count() > 0)
                @foreach ($documents as $i => $data)
                    <tr>
                        <td>{{ $i+1 }}</td>
                        <td>{{ $data->document_name }}</td>
                        <td>{!! $data->description !!}</td>
                        <td>
                            <div class="form-check form-switch">
                                <input class="form-check-input" type="checkbox" role="switch" id="status" <?= $data->status ? "checked" : '' ?> wire:click="update_status({{$data->id}}, {{$data->status}})">
                            </div>
                        </td>
                        <td>                            
                            <a type="button" class="btn btn-primary btn-sm" href="{{ url('admin/document_attachment/'.$data->id) }}"><i class="bi bi-paperclip"></i></a>
                            <a href="{{ route('admin.document.edit', $data->id) }}" type="button" class="btn btn-primary btn-sm" wire:click="edit({{$data->id}})"><i class="bi bi-pencil"></i></a>
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

      @push('js')
      <script>

          $( "#note" ).on( "click", function( event ) { ClassicEditor.create(document.querySelector('#note')) });
          
          ClassicEditor
          .create(document.querySelector('#note'))
          .then(editor => {

            editor.model.document.on('change:data', () => {
              let note = $('#note').data('note'); console.log(note);
              eval(note).set('description', editor.getData());
            })            
          })
          .catch(error => {
            console.error(error);
          });

      </script>
      @endpush

</div>

{{ $documents->links('livewire.components.pagination-links-view') }}