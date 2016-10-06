<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::group(['middleware' => 'App\Http\Middleware\Admin'], function()
{
    Route::post('admin/{admin}/update_user', 'AdminController@update_user');
    Route::get('admin/users', 'AdminController@users');
    Route::get('admin/files', 'AdminController@files');
    Route::resource('admin', 'AdminController');

});

Route::group(['middleware' => 'App\Http\Middleware\User'], function()
{
    Route::get('/home', 'HomeController@index');
    Route::get('uploads/list_public', 'UploadsController@list_public');
    Route::resource('uploads', 'UploadsController');

});

Auth::routes();



