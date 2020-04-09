<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/pages/index', 'PagesController@index');
Route::get('/pages/about', 'PagesController@about');
Route::get('/user/plan', 'UserController@show');




Auth::routes(['verify'=>true]);

Route::get('/home', 'HomeController@index')->name('home');

Route::resource('/user','UserController', ['except' => ['create', 'store']]);



Route::get('/admin/index', 'AdminController@index');

Route::namespace('Admin')->prefix('admin')->name('admin.')->group(function(){
    Route::resource('/category','CategoriesController',['except' =>['edit', 'update', 'show']]);
    Route::resource('/book','BooksController');
    Route::resource('/users','UsersController', ['except' => ['show', 'create', 'store']]);
});
