<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Classroom;
class ClassroomController extends Controller
{
       /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $classrooms = \App\Classroom::all();

        return view('Classroom/index', compact('classrooms'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('Classroom/create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(\App\Classroom $gclass)
    {
    $classroom = new \App\Classroom();
    $classroom->classroom = request('classroom');
    $classroom->save();
    
    return redirect('classroom');
    }

  
    public function destroy(\App\Classroom $classroom)
    {
        $classroom->delete();
        return redirect('classroom');
    }
}
