<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Input;

use App\Http\Requests;
use Session;

class AdminController extends Controller
{
    public function index()
    {
        $query = DB::table('users')
            ->orderBy('created_at', 'DESC')
            ->limit(10)
            ->get();

        $req = DB::table('uploads')
            ->orderBy('date', 'DESC')
            ->limit(10)
            ->get();

        return view('admin/index', ['user' => $query, 'upload' => $req]);
    }

    public function create()
    {
        //
    }

    public function update_user(Request $request ,$id)
    {

        $rules = array(
            'username' => 'max:255|min:3|unique:users',
            'email' => 'email|max:255|unique:users',
            'firstname' => 'max:255',
            'lastname' => 'max:255',
            'birthdate' => 'max:255',
        );

        $validator = Validator::make(Input::all(), $rules);

        if ($validator->fails()) {
            return Redirect::to('admin/' . $id . '/edit')
                ->withErrors($validator);
        }else
        {
            $query = DB::table('users')->where('id', '=', $id);

            if (!empty($request->input('username'))) {
                $query = $query->update(['username' => $request->input('username'), 'active' => $request->input('active')]);
            }

            if (!empty($request->input('email'))) {
                $query = $query->update(['email' => $request->input('email'),'active' => $request->input('active')]);
            }

            if (!empty($request->input('birthdate'))) {
                $query = $query->update(['birthdate' => $request->input('birthdate'), 'active' => $request->input('active')]);
            }

            if (!empty($request->input('lastname'))) {
                $query = $query->update(['lastname' => $request->input('lastname'), 'active' => $request->input('active')]);
            }

            if (!empty($request->input('firstname'))) {
                $query = $query->update(['firstname' => $request->input('firstname'), 'active' => $request->input('active')]);
            }


            Session::flash('message', 'Modification Terminée');
            return Redirect::to('admin/' . $id . '/edit');
        }
    }

    public function show($id)
    {
        $query = DB::table('uploads')
            ->where('user_id', '=', $id)
            ->paginate();

        return view('admin/show', ['upload' => $query]);
    }

    public function edit($id)
    {
        $query = DB::table('users')
            ->where('id', '=', $id)
            ->first();

        return view('admin/edit', ['user' => $query]);
    }

    public function update(Request $request, $id)
    {
        DB::table('users')
            ->where('id', '=' , $id)
            ->update(['active' => 1]);

        return redirect()->action('AdminController@index');
    }

    public function edit_file($id)
    {
        $user = DB::table('uploads')
            ->join('users', 'users.id' , '=' , 'user_id')
            ->where('id_upload', '=' , $id)
            ->first();

       $query = DB::table('uploads')
           ->where('id_upload', '=', $id)
           ->first();

        return view('admin/edit_file', ['uploads' => $query , 'user' => $user]);
    }

    public function update_file(Request $request, $id)
    {

    }


    public function destroy($id)
    {
        DB::table('users')
            ->where('id', '=' , $id)
            ->update(['active' => 0]);

        return redirect()->action('AdminController@index');
    }

    public function users()
    {
        $query = DB::table('users')
            ->paginate(10);

        return view('admin/users', ['user' => $query]);
    }

    public function files()
    {
        $query =DB::table('uploads')
            ->join('users', 'users.id', '=' , 'user_id')
            ->paginate(10);

        return view('admin/files', ['upload' => $query]);
    }
}