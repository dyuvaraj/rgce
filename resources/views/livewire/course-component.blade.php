<div>
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Courses</h1>
      </div>

      @if(session()->has('message'))
        <div class="alert alert-success text-center">{{ session('message') }}</div>
      @endif

      <div class="card text-bg-light">
        
        <div class="card-body">
          <h5 class="card-title"></h5>

          <form wire:submit.prevent="{{$submit}}" class="row g-3">
            <div class="col-md-6">
              <label for="title" class="form-label">Degree</label>
              <select class="form-select" aria-label="Default select example" wire:model="degree">
                <option value=0 >Select Degree</option>
                @foreach ($degree_type as $i => $data)
                    <option value="{{$data}}">{{$data}}</option>
                @endforeach
              </select>
              @error("degree")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>
            <div class="col-md-6">
              <label for="specialization" class="form-label">Specialization</label>
              <input type="text" class="form-control" id="specialization" placeholder="Specialization" wire:model="specialization">
              @error("specialization")
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
            <div class="col-md-6">
              <label for="special_mention" class="form-label">Special Mention</label>
              <input type="text" class="form-control" id="special_mention" placeholder="Special Mention" wire:model="special_mention">
              @error("special_mention")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>
            <div class="col-md-6">
              <label for="special_description" class="form-label">Special Description</label>
              <textarea type="text" class="form-control" id="inputAddress" placeholder="Special Description" wire:model="special_description"></textarea>
              @error("special_description")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>
            <div class="col-md-6">
              <label for="spec_image" class="form-label">Specialization Image</label>
              <input class="form-control" type="file" id="spec_image" wire:model="spec_image">
              @error("spec_image")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>
            <div class="col-12">
              <button id="submits" type="submit" class="btn btn-primary">{{$submit_btn}}</button>
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
              <th scope="col">Degree</th>
              <th scope="col">Specialization</th>
              <th scope="col">Description</th>
              <th scope="col">Specialization Image</th>
              <th scope="col" width="10%">Action</th>
            </tr>
          </thead>
          <tbody>

            @if ($courses->count() > 0)
                @foreach ($courses as $i => $data)
                    <tr>
                        <td>{{ $i+1 }}</td>
                        <td>{{ $data->degree }}</td>
                        <td>{{ $data->specialization }}</td>
                        <td>{!! Str::words($data->description , 10, ' ...')!!}</td>
                        <td>
                            <?php 
                                if($data->spec_image) {
                            ?>
                                <img height="100px" src="{{ asset('storage/'.$data->spec_image) }}" />
                            <?php
                                }
                            ?>
                        </td>
                        <td>
                            <a type="button" class="btn btn-primary btn-sm" href="{{ url('admin/course_image/'.$data->id) }}"><i class="bi bi-image"></i></a>
                            <a href="{{ route('admin.course.edit', $data->id) }}" type="button" id="edit" class="btn btn-primary btn-sm" ><i class="bi bi-pencil"></i></a>
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
          

        

        // ClassicEditor
        //   .create(document.querySelector('#note'))
        //   .then(editor => {

        //     // editor.model.document.on('change:data', () => {
        //     //   @this.set('description', editor.getData());
        //     // })
            
        //     // @this.set('description',  $(this).val());    
        //     // @this.set('description', editor.getData());

        //     // editor.model.document.on('change:data', () => {
        //     //   let note = $('#note').data('note'); console.log(note);
        //     //   eval(note).set('description', editor.getData());
        //     // })

        //     document.querySelector('#submits').addEventListener('click', () => {
        //       let note = $('#note').data('note');
        //       eval(note).set('description', editor.getData());
        //     });
        

        //     document.querySelector('#edit').addEventListener('click', () => {

        //       editor.setData( @this.get("description") );
        //       // editor.setData();
        //       // let note = $('#note').data('note');
        //       // eval(note).set( 'description',  editor.getData());
        //     });
            
        //   })
        //   .catch(error => {
        //     console.error(error);
        //   });
      </script>
      @endpush

</div>

{{ $courses->links('livewire.components.pagination-links-view') }}