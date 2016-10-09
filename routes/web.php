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
    Route::get  ('admin/{admin}/edit_file', 'AdminController@edit_file');
    Route::post('admin/{admin}/update_user', 'AdminController@update_user');
    Route::get('admin/users', 'AdminController@users');
    Route::get('admin/files', 'AdminController@files');
    Route::resource('admin', 'AdminController');

});

Route::group(['middleware' => 'App\Http\Middleware\User'], function()
{
    //Download
    Route::get('uploads/{id}/{image}/{name}/download', 'UploadsController@download');

    //read file
    Route::get('file/{id}/{image}/{name}', 'UploadsController@file');

    //movies
    Route::get('uploads/movies/{id}', 'UploadsController@movies');

    //sound
    Route::get('uploads/musics/{id}', 'UploadsController@musics');


    Route::get('/home', 'HomeController@index');
    Route::get('uploads/list_public', 'UploadsController@list_public');
    Route::resource('uploads', 'UploadsController');
    Route::resource('contact', 'ContactController');

});

Auth::routes();



