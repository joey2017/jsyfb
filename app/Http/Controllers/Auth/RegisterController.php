<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    protected $_request = '';

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(Request $request)
    {
        $this->middleware('guest');
        $this->_request = $request;
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'username' => ['required', 'string', 'max:255'],
            //'email'    => ['required', 'string', 'email', 'max:255', 'unique:jsyfb_user'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
            'mobile'   => ['required', 'regex:/^((13[0-9])|(14[5,7])|(15[0-3,5-9])|(17[0,3,5-8])|(18[0-9])|166|198|199|(147))\\d{8}$/'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array $data
     * @return \App\User
     */
    protected function create(array $data)
    {
        //dd($this->_request->getClientIp());
        return User::create([
            'username'        => $data['username'],
            //'email'    => $data['email'],
            'email'           => '12345678@qq.com',
            'password'        => Hash::make($data['password']),
            'mobile'          => $data['mobile'],
            'invitation_code' => substr(uniqid(), 7),
            'reg_ip'          => $this->_request->getClientIp(),
        ]);
    }
}
