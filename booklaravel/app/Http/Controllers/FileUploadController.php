<?php
   
namespace App\Http\Controllers;
  
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Group;
use App\File;
use App\Classroom;
  
class FileUploadController extends Controller
{
    public function index()
    {
        $check_role = self::checkRole();
        $role = $check_role[0]->role_id;
        $fileTeacher = [];
        $fileStudent = [];

        $id = Auth::user()->id;
        if($role == 4){
            $classroom = DB::table('classrooms')
                ->select('classrooms.classroom','classrooms.id')
                ->join('groups', 'groups.group_id', '=', 'classrooms.id')
                ->join('users', 'users.id', '=', 'groups.teacher_id')
                ->where(['groups.teacher_id'=> $id])
                ->get();

            $file = DB::table('files')
                ->select('classrooms.classroom','files.*','role_user.role_id')
                ->join('classrooms', 'files.class_id', '=', 'classrooms.id')
                ->join('role_user', 'files.user_id', '=', 'role_user.user_id')
                ->join('groups', 'groups.teacher_id', '=', 'files.user_id')
                ->where('groups.teacher_id', $id)
                ->orderBy('files.id')
                ->get();

            $group = DB::table('groups')
                ->select('groups.teacher_id','groups.group_id')
                ->where('groups.teacher_id', $id)
                ->get();

            $e = 0;
            $groups = [];
            $arr_g = [];
            foreach ($group as $key=>$value){
                $arr_g[$e] = $value->group_id;
                if($key >= 1){
                    if($value->group_id == $arr_g[$e-1]){
                        $e++;
                    } else {
                        $groups[] = $value;
                        $e++;
                    }
                } else {
                    $groups[] = $value;
                    $e++;
                }
            }

            foreach ($groups as $key => $value){
                $f_st[] = DB::table('files')
                    ->select('classrooms.classroom','files.*','role_user.role_id')
                    ->join('classrooms', 'files.class_id', '=', 'classrooms.id')
                    ->join('role_user', 'files.user_id', '=', 'role_user.user_id')
                    ->where('files.class_id', $value->group_id)
                    ->where('role_user.role_id', '3')
                    ->orderBy('files.id')
                    ->get();
            }

            foreach ($f_st as $key => $value){
                if(count($value) > 1){
                    foreach ($value as $values){
                        $fileStudent[] = $values;
                    }
                } else {
                    foreach ($value as $values){
                        $fileStudent[] = $values;
                    }
                }
            }
        }

        if($role == 3){
            $classroom = DB::table('classrooms')
                ->select('classrooms.classroom','classrooms.id')
                ->join('groups', 'groups.group_id', '=', 'classrooms.id')
                ->join('users', 'users.id', '=', 'groups.student_id')
                ->where(['groups.student_id'=> $id])
                ->get();

            $file = DB::table('files')
                ->select('classrooms.classroom','files.*','role_user.role_id')
                ->join('classrooms', 'files.class_id', '=', 'classrooms.id')
                ->join('role_user', 'files.user_id', '=', 'role_user.user_id')
                ->where(['files.user_id'=> $id])
                ->orderBy('files.id')
                ->get();

            $group = DB::table('groups')
                ->select('groups.teacher_id','groups.group_id')
                ->where('groups.student_id', $id)
                ->get();

            foreach($group as $key => $value){
                $fileTeacher[] = DB::table('files')
                    ->select('classrooms.classroom','files.*','role_user.role_id')
                    ->join('classrooms', 'files.class_id', '=', 'classrooms.id')
                    ->join('role_user', 'files.user_id', '=', 'role_user.user_id')
                    ->where(['files.user_id'=> $value->teacher_id])
                    ->where(['files.class_id'=> $value->group_id])
                    ->get();
            }
        }

        $i = 0;
        $class = [];
        $array = [];
        foreach ($classroom as $key=>$value){
            $array[$i] = $value->id;
            if($key >= 1){
                if($value->id == $array[$i-1]){
                    $i++;
                } else {
                    $class[] = $value;
                    $i++;
                }
            } else {
                $class[] = $value;
                $i++;
            }
        }

        $files = [];
        $arr = [];
        foreach ($file as $key=>$value){
            $arr[$i] = $value->id;
            if($key >= 1){
                if($value->id == $arr[$i-1]){
                    $i++;
                } else {
                    $files[] = $value;
                    $i++;
                }
            } else {
                $files[] = $value;
                $i++;
            }
        }
        return view('fileUpload',compact('files', 'class', 'fileTeacher', 'fileStudent'));
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

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function fileUploadPost(Request $request)
    {
        $id = Auth::user()->id;
        $request->validate([
            'file' => 'required|mimes:pdf|max:2048',
        ]);
  
        // $fileName = time().'.'.$request->file->extension();  
   
        // $request->file->move(public_path('uploads'), $fileName);

        if($request->hasFile('file')){
            $filename = $request->file->getClientOriginalName();
            $filesize = $request->file->getClientSize();
            $request->file->storeAs('public/upload', $filename);
            $file = new File;
            $file->name = $filename;
            $file->size = $filesize;
            $file->class_id = $request->class_id;
            $file->user_id = $id;
            $file->save();
            return back()
                ->with('success','You have successfully upload file.')
                ->with('file',$filename);
        }
    }

    public function downfunc(){
        $downLoads = DB::table('files')->get();
        return view('fileUpload',compact('downLoads'));
    }
}