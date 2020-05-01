<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Group;
use App\User;
use App\Classroom;
class GroupController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $groups = Group::all();
        return view('group.index',compact('groups'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $classrooms = Classroom::all();
        $groups = Group::all();
        $users= User::all();
        return view('group.create',compact('users','groups','classrooms'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $group = new Group();
        $gr_id = $request->classroom_id;
        $t_id = $request->teacher_id;
        $t_nm = User::where('id', $t_id)->pluck('name')->first();
        $cr_nm = Classroom::where('id',$gr_id)->pluck('classroom')->first();
        $array = [];
        foreach($request->student_id as $key => $value){
            $st_nm = User::where('id', $value)->pluck('name')->first();
            $arr = [
                "group_id" => $gr_id,
                "classroom"=> $cr_nm,
                "student_id" => $value,
                "student_name" => $st_nm,
                "teacher_id" => $t_id,
                "teacher_name" => $t_nm
            ];
            $array[]= $arr;
        }
        Group::insert($array);
        return redirect('group');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Group $group)
    {
        //
        $group->delete();
        return redirect('group');
    }
}
