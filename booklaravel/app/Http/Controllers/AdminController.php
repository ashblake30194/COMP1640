<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth')->except(['show']);;
    }
    public function index(){

        $data= ['title' => 'ONLINE STUDY - ADMIN ZONE', 'desc' => 'Welcome Admin zone'];
    return view('admin/index',$data);

    }

    public function show() {

        if (\Auth::check() ) {
            return redirect('/admin/index');
        } else {
                return redirect('/home');
        }
    }
}
