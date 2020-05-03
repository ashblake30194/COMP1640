<?php

namespace App\Http\Controllers;

use App\Message;
use App\User;
use App\Group;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Pusher\Pusher;

class DashBoardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $check_role = self::checkRole();
        $role = $check_role[0]->role_id;
        $id = Auth::user()->id;
        if($role == 4){
            $classrooms = DB::table('classrooms')
                ->select('classrooms.*','groups.teacher_name')
                ->join('groups', 'groups.group_id', '=', 'classrooms.id')
                ->join('users', 'users.id', '=', 'groups.teacher_id')
                ->where(['groups.teacher_id'=> $id])
                ->orderBy('classrooms.id')
                ->get();
        }

        if($role == 3){
            $classrooms = DB::table('classrooms')
                ->select('classrooms.*','groups.teacher_name')
                ->join('groups', 'groups.group_id', '=', 'classrooms.id')
                ->join('users', 'users.id', '=', 'groups.student_id')
                ->where(['groups.student_id'=> $id])
                ->orderBy('classrooms.id')
                ->get();
        }
        $i = 0;
        $classroom = [];
        $array = [];
        foreach ($classrooms as $key=>$value){
            $array[$i] = $value->id;
            if($key >= 1){
                if($value->id == $array[$i-1]){
                    $i++;
                } else {
                    $classroom[] = $value;
                    $i++;
                }
            } else {
                $classroom[] = $value;
                $i++;
            }
        }

        return view('/dashBoard', compact('classroom'));
    }

    public function checkRole(){
        $id = Auth::user()->id;
        $check_role = DB::table('users')
            ->select('role_user.role_id')
            ->join('role_user', 'role_user.user_id', '=', 'users.id')
            ->where('role_user.user_id', $id)
            ->get();
        return $check_role;
    }
}
