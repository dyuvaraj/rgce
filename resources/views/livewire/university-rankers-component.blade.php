<div>
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">University Rankers</h1>
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
              <label for="student_id" class="form-label">Student ID</label>
              <input type="text" class="form-control" id="student_id" placeholder="Student ID" wire:model="student_id">
              @error("student_id")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>

            <div class="col-md-6">
              <label for="student_name" class="form-label">Student Name</label>
              <input type="text" class="form-control" id="student_name" placeholder="Student Name" wire:model="student_name" />
              @error("student_name")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>

            <div class="col-md-6">
              <label for="course" class="form-label">Course</label>
              <select class="form-select" aria-label="Default select example" wire:model="course">
                <option value=0 >Select Course</option>
                @foreach ($courses as $i => $data)
                    <option value="{{$data->id}}">{{$data->degree.' '.$data->specialization}}</option>
                @endforeach
              </select>
              @error("course")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>

            <div class="col-md-6">
              <label for="year" class="form-label">Year</label>
              <select class="form-select" aria-label="Default select example" wire:model="year">
                <option value=0 >Year</option>
                @for ($i=1990; $i<= date("Y"); $i++)
                    <option value="{{$i}}">{{$i}}</option>
                @endfor
              </select>
              @error("year")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>

            <div class="col-md-6">
              <label for="university" class="form-label">University</label>
              <input type="text" class="form-control" id="university" placeholder="University" wire:model="university">
              @error("university")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>

            <div class="col-md-6">
              <label for="rank" class="form-label">Rank</label>
              <input type="text" class="form-control" id="rank" placeholder="Rank" wire:model="rank">
              @error("rank")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>

            <div class="col-md-6">
              <label for="percentage" class="form-label">Percentage</label>
              <input type="text" class="form-control" id="percentage" placeholder="Percentage" wire:model="percentage">
              @error("percentage")
                    <span class="text-danger"> {{$message}} </span>
              @enderror
            </div>

            <div class="col-md-6">
              <label for="student_image" class="form-label">Student Image</label>
              <input class="form-control" type="file" id="student_image" wire:model="student_image">
            </div>

            @if($student_image_src)
            <div class="col-md-6">
              <div class="card" style="width: 18rem;">
                <img src="{{ asset('storage/'.$student_image_src) }}" class="card-img-top" alt="...">
                <div class="card-body">
                <button type="button" class="btn btn-danger btn-sm" wire:click="delete_image({{$ur_id}})"><i class="bi bi-trash3"></i></button>
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

      <br/><br/>
      <!-- <h2>Section title</h2> -->
      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <thead class="table-dark">
            <tr>
              <th scope="col">#</th>
              <th scope="col">Title</th>
              <th scope="col">Description</th>
              <th scope="col">Image</th>
              <th scope="col">Status</th>
              <th scope="col" width="10%">Action</th>
            </tr>
          </thead>
          <tbody>

            @if ($university_rankers->count() > 0)
                @foreach ($university_rankers as $i => $data)
                    <tr>
                        <td>{{ $i+1 }}</td>
                        <td>{{ $data->student_id }}</td>
                        <td>{{ $data->student_name }}</td>
                        <td>
                            <?php 
                                if($data->student_image) {
                            ?>
                                <img height="100px" src="{{ asset('storage/'.$data->student_image) }}" />
                            <?php
                                }
                            ?>
                        </td>
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

{{ $university_rankers->links('livewire.components.pagination-links-view') }}