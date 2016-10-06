<?php

namespace App\Http\Controllers\Auth;

use App\User;
use Validator;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\RegistersUsers;

class RegisterController extends Controller
{
    use RegistersUsers;
    protected $redirectTo = '/home';

    public function __construct()
    {
        $this->middleware('guest');
    }

    protected function validator(array $data)
    {
        return Validator::make($data, [
            'username' => 'required|max:255|min:3',
            'email' => 'required|email|max:255|unique:users',
            'firstname' => 'required|max:255',
            'lastname' => 'required|max:255',
            'birthdate' => 'required|max:255',
            'password' => 'required|min:4|confirmed',
        ]);
    }

    protected function create(array $data)
    {
        if ($data['username'] == 'users' || $data['username'] == 'files' || $data['username'] == 'user')
        {
            echo "impossible d'utiliser ce nom";
            die;
        }else{
            return User::create([
                'username' => $data['username'],
                'email' => $data['email'],
                'firstname' => $data['firstname'],
                'lastname' => $data['lastname'],
                'birthdate' => $data['birthdate'],
                'password' => bcrypt($data['password']),
            ]);
        }
    }
}
