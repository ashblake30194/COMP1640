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
Route::get('/pages/error', 'PagesController@error');
Route::get('/pages/registration', 'PagesController@RegistrationType');
Route::get('/user/plan', 'UserController@show');


Route::resource('/group', 'GroupController');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::resource('/user','UserController', ['except' => ['create', 'store']]);

Route::get('/register/admin', 'Auth\RegisterController@showAdminForm')->name('register.admin');
Route::get('/register/staff', 'Auth\RegisterController@showStaffForm')->name('register.staff');
Route::get('/register/student', 'Auth\RegisterController@showStudentForm')->name('register.student');
Route::get('/register/teacher', 'Auth\RegisterController@showTeacherForm')->name('register.teacher');

Route::post('/register/admin', 'Auth\RegisterController@createAdmin')->name('register.admin');
Route::post('/register/staff', 'Auth\RegisterController@createStaff')->name('register.staff');
Route::post('/register/student', 'Auth\RegisterController@createStudent')->name('register.student');
Route::post('/register/teacher', 'Auth\RegisterController@createTeacher')->name('register.teacher');

Route::get('/admin/index', 'AdminController@index')->name('admin')->middleware('admin');

Route::namespace('Admin')->prefix('admin')->name('admin.')->group(function(){
    Route::resource('/category','CategoriesController',['except' =>['edit', 'update', 'show']]);
    Route::resource('/book','BooksController');
    Route::resource('/users','UsersController', ['except' => ['show', 'create', 'store']]);
});

Route::get('/chat', 'ChatController@index');
Route::get('/chat/{id}', 'ChatController@getMessage')->name('message');
Route::post('chat', 'ChatController@sendMessage');


Route::get('/message/{id}', 'HomeController@getMessage')->name('message');
Route::post('message', 'HomeController@sendMessage');
