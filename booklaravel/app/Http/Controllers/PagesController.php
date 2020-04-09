<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PagesController extends Controller
{
    public function __construct(){
        ///echo 'Pages Loaded';

        ///$this->postModel = $this->model('Post');
    }

    public function index(){

        $data= ['title' => 'Book Online', 'desc' => 'Welcome to Book On-Line'];
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
}
