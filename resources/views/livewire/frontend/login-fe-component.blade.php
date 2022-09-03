<div>


<main class="form-signin w-100 m-auto"> <br/><br/><br/><br/><br/><br/><br/>
  <form wire:submit.prevent="handleLogin">
    <h1 class="h3 mb-3 fw-normal">Please sign in</h1>

    <div class="form-floating">
      <input type="email" class="form-control" id="emails" name="emails" placeholder="name@example.com" wire:model="email">
      <label for="floatingInput">Email address</label>
      @error("email")
        <span class="text-danger"> {{$message}} </span>
      @enderror
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" id="password" name="password" placeholder="Password" wire:model="password">
      <label for="floatingPassword">Password</label>
      @error("password")
        <span class="text-danger"> {{$message}} </span>
      @enderror
    </div>

    <div class="checkbox mb-3">
      <label>
        <input type="checkbox" value="remember-me"> Remember me
      </label>
    </div>
    <button class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>
    <!-- <p class="mt-5 mb-3 text-muted">&copy; 2017–2022</p> -->
  </form> <br/><br/><br/>
</main>




</div>

<style>

.form-signin {
  max-width: 330px;
  padding: 15px;
}

.form-signin .form-floating:focus-within {
  z-index: 2;
}

.form-signin input[type="email"] {
  margin-bottom: -1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}

.form-signin input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}


</style>
