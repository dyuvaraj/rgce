<div>
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">News & Events</h1>
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
                Highlight News/Event
              </label>
            </div>

            <div class="col-md-6">
              <label for="title" class="form-label">Title</label>
              <input type="text" class="form-control" id="title" placeholder="Title" wire:model="title">
              @error("title")
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
              <label for="link_title" class="form-label">Link Title</label>
              <input type="text" class="form-control" id="link_title" placeholder="Link Title" wire:model="link_title">
              @error("link_title")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>

            <div class="col-md-6">
              <label for="link" class="form-label">Link</label>
              <input type="text" class="form-control" id="link" placeholder="Link" wire:model="link">
              @error("link")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>

            <div class="col-md-6">
              <label for="news_image" class="form-label">News Image/File</label>
              <input class="form-control" type="file" id="news_image" wire:model="news_image">
            </div>

            @if($news_image_src)
            <div class="col-md-6">
              <div class="card" style="width: 18rem;">
                <img src="{{ asset('storage/'.$news_image_src) }}" class="card-img-top" alt="...">
                <div class="card-body">
                <button type="button" class="btn btn-danger btn-sm" wire:click="delete_image({{$news_id}})"><i class="bi bi-trash3"></i></button>
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