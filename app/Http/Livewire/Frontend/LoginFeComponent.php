<?php

namespace App\Http\Livewire\Frontend;

use Livewire\Component;
use Illuminate\Support\Facades\Auth;

class LoginFeComponent extends Component
{

    public $email, $password;
    public $submit = 'store';
    public function handleLogin() {

        if (Auth::attempt([ 'email' => $this->email, 'password' => $this->password ])) {
            return redirect(route('admin.news'));
        }        
    }

    public function render()
    {
        return view('livewire.frontend.login-fe-component')->layout('livewire.layouts.app');
    }
}
