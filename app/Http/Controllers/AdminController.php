<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Pagination\LengthAwarePaginator;
use App\Http\Requests;

class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */


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

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
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
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $query = DB::table('uploads')
            ->where('user_id', '=', $id)
            ->paginate();

        return view('admin/show', ['upload' => $query]);
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
        DB::table('users')
            ->where('id', '=' , $id)
            ->update(['active' => 1]);

        return redirect()->action('AdminController@index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
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
            ->paginate(10);

        return view('admin/files', ['upload' => $query]);
    }



}
