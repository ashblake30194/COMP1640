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
})->middleware('auth');

Route::get('/pages/index', 'PagesController@index');
Route::get('/pages/about', 'PagesController@about');
Route::get('/pages/error', 'PagesController@error');

Route::resource('/group', 'GroupController');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::resource('/user','UserController', ['except' => ['create', 'store']]);

Route::resource('/classroom','ClassroomController', ['except' => ['edit', 'update', 'show']]);

Route::get('/admin/index', 'AdminController@index')->name('admin')->middleware('admin');

Route::namespace('Admin')->prefix('admin')->name('admin.')->group(function(){
    Route::resource('/category','CategoriesController',['except' =>['edit', 'update', 'show']]);
    Route::resource('/book','BooksController');
    Route::resource('/users','UsersController', ['except' => ['show']]);
});

Route::get('/chat', 'ChatController@index');
Route::get('/chat/{id}', 'ChatController@getMessage')->name('message');
Route::post('chat', 'ChatController@sendMessage');


Route::get('/message/{id}', 'HomeController@getMessage')->name('message');
Route::post('message', 'HomeController@sendMessage');

Route::get('file-upload', 'FileUploadController@index');
Route::get('download-file', 'FileUploadController@downfunc');
Route::post('file-upload', 'FileUploadController@fileUploadPost')->name('file.upload.post');