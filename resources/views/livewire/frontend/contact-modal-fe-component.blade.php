<div>
<form wire:submit.prevent="store" class="php-email-form">

    <!-- Enquiry Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        
            <div class="modal-dialog">
                <div class="modal-content">

                    <div class="modal-body">

                        <!-- ======= Contact Section ======= -->
                        <section id="contact" class="contact">


                                <div class="container">
                                    <div class="row ">

                                        <div class="col">

                                            <h5 class="modal-title" id="exampleModalLabel" style="text-align:center; font-weight:600;">Admission Enquiry Form</h5>

                                            <div class="row">
                                                <div class="form-group mt-3">
                                                    <input type="text" name="name" class="form-control" id="name" placeholder="Name" wire:model="name" required>
                                                    @error("name")
                                                    <span class="text-danger"> {{$message}} </span>
                                                    @enderror
                                                </div>
                                                <div class="form-group mt-3">
                                                    <input type="text" class="form-control" name="phone_no" id="phone_no" placeholder="Phone no" wire:model="phone_no" required>
                                                    @error("phone_no")
                                                    <span class="text-danger"> {{$message}} </span>
                                                    @enderror
                                                </div>
                                                <div class="form-group mt-3">
                                                    <input type="email" class="form-control" name="email" id="email" placeholder="Email" wire:model="email" required>
                                                    @error("email")
                                                    <span class="text-danger"> {{$message}} </span>
                                                    @enderror
                                                </div>
                                            </div>
                                            <div class="form-group mt-3">
                                                <select class="form-select" aria-label="Default select example" wire:model="type">
                                                    <option value=0>Select Type</option>
                                                    @foreach ($lead_type as $i => $data)
                                                        <option value="{{$data}}">{{$data}}</option>
                                                    @endforeach
                                                </select>
                                                @error("type")
                                                <span class="text-danger"> {{$message}} </span>
                                                @enderror
                                            </div>
                                            
                                            <div class="form-group mt-3">
                                                <textarea class="form-control" name="description" rows="5" placeholder="Description" required wire:model="description"></textarea>
                                                @error("description")
                                                <span class="text-danger"> {{$message}} </span>
                                                @enderror
                                            </div>

                                            <div class="my-3">
                                                <div class="loading">Loading</div>
                                                <div class="error-message"></div>
                                                <div class="sent-message">Your message has been sent. Thank you!</div>
                                            </div>

                                        </div>

                                    </div>

                                </div>
                        </section><!-- End Contact Section -->

                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" style="font-size: 16px; padding: 0 20px; transition: 0.3s; border-radius: 50px; height: 40px;">Close</button>
                        <button type="submit" class="btn btn-primary" style="font-size: 16px; padding: 0 20px; background: #C32621; color: #fff; transition: 0.3s; border-radius: 50px; height: 40px;">Submit Enquiry</button>
                    </div>

                </div>
            </div>
        
    </div>
    </form>
                    

</div>