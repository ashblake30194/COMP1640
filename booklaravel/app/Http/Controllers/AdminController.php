<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function index(){

        $data= ['title' => 'Laravel Book', 'desc' => 'Welcome Laravel Book'];
    return view('admin/index',$data);

    }
}
