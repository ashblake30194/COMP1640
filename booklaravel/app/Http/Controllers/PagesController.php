<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
class PagesController extends Controller
{
    public function __construct(){
        ///echo 'Pages Loaded';

        ///$this->postModel = $this->model('Post');
    }

    public function index(){

        $data= ['title' => 'Online Chat', 'desc' => 'Welcome to Online Chat'];
        return view('pages/index',$data);

    }

   /* public function about($id)
   //{
        echo $id;
        //echo 'this about';
    }*/

    public function about()
   {
    $data= ['title' => 'About Us', 'desc' => 'ALPHA'];
    return view('pages/about', $data);
   }

   public function error()
   {
       $data= ['title'=> 'Warning', 
       'user'=> Auth::user()->roles()->pluck('name')->first(),];
       return view('pages/error', $data);
   }
}
