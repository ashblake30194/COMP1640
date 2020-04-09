<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Request;

class UsersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $users = User::all();
        return view('admin/users/index', compact('users'));
    }

    
    public function edit(User $user)
    {
        $roles = \App\Role::all();
        return view('admin/users/edit', compact('user','roles'));
    }


    public function update(Request $request, User $user)
    {
        //
        $user->roles()->sync($request->roles);
        return redirect('admin/users');
    }

    public function destroy(User $user)
    {
        $user->roles()->detach();
        $user->delete();
        return redirect('admin/users');
    }
}
