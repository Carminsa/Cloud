<?php

namespace App\Http\Controllers;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Http\Request;
//use Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Validator;
use Session;
use Response;
use App\Http\Requests;

class UploadsController extends Controller
{
    private $path;
    private $folder_exist;
    private $file_name;
    private $file_size;
    private $file_path;
    private $file_mime;

    public function __construct()
    {
        $this->path = storage_path();
        $this->folder_exist = $this->path . '/upload/';
    }

    public function download($id = null, $image = null, $name = null )
    {
        $path = storage_path('upload') . '/' . $id . '/' . $image . '/' . $name ;
        if (file_exists($path)) {
            return Response::download($path);
        }
    }

    public function list_public()
    {
        $query = DB::table('uploads')
            ->where('private', '=', 1 )
            ->paginate(10);

        return view('uploads/list_public', ['upload' => $query]);
    }

    public function index()
    {
        $query = DB::table('uploads')
            ->where('user_id', '=', Auth::user()->id)
            ->paginate(10);
//            ->get();

        return view('uploads/index', ['upload' => $query]);
    }

    public function create()
    {
        //
    }

    public function store(Request $request = null)
    {
        if (!file_exists($this->folder_exist . Auth::user()->id))
        {
            mkdir($this->path . '/upload/' . Auth::user()->id, 0777);
            return $this->upload();

        }else{
            return $this->upload();
        }
    }

    public function show($id = null)
    {
        $query = DB::table('uploads')
            ->where('mime', '=' , 'image/jpeg')
            ->where('user_id', '=' , $id)
            ->get();

        return view('uploads/show', ['pics' => $query]);
    }

    public function movies($id = null)
    {
        $query = DB::table('uploads')
            ->where('mime', '=' , 'video/mp4')
            ->where('user_id', '=' , $id)
            ->get();

        return view('uploads/movies', ['pics' => $query]);
    }

    public function musics($id = null)
    {
        $query = DB::table('uploads')
            ->where('mime', '=' , 'audio/mpeg')
            ->where('user_id', '=' , $id)
            ->get();

        return view('uploads/musics', ['pics' => $query]);
    }

    public function file($id, $image = null, $name)
    {
        $path = storage_path('upload') . '/' . $id . '/' . $image . '/' . $name ;
        if (file_exists($path)) {
            return Response::download($path);
        }
    }

    public function edit($id)
    {
        $query = DB::table('uploads')
            ->where('id_upload','=' , $id)
            ->first();

        if ($query->user_id != Auth::user()->id)
        {
            Session::flash('error', 'Bien essayé Florent !');
            return redirect()->action('HomeController@index');
        }else {
            return view('uploads/edit', ['uploads' => $query]);
        }
    }

    public function update(Request $request, $id)
    {
        $unique_name = DB::table('uploads')
            ->select('name')
            ->where('user_id', '=' , Auth::user()->id)
            ->where('name', '=', $request->input('name'))
            ->get();

        $rules = array(
            'name' => 'min:3',
        );

        $query = DB::table('uploads')
            ->where('id_upload', '=', $id);

        $validator = Validator::make(Input::all(), $rules);

        if ($validator->fails()) {
            return Redirect::to('uploads/' . $id . '/edit')
                ->withErrors($validator);
        }
        else if (count($unique_name) > 0 ){
            Session::flash('error', 'Un fichier du même nom existe déjà, merci de choisir un autre nom');
            return Redirect::to('uploads/' . $id . '/edit');
        }
        else {
            if ($request->input('name') !== ""){
                $query = $query->update([
                    'name' => $request->input('name'),
                    'private' => $request->input('status')
                ]);
            }else{
                $query = $query->update([
                    'private' => $request->input('status')
                ]);
            }

            Session::flash('message', 'Mise à jour effectuée');
            return Redirect::to('uploads/' . $id . '/edit');
        }
    }

    public function destroy($id)
    {
        $name = DB::table('uploads')
            ->select('path')
            ->where('id_upload', '=' , $id)
            ->first();

        $explode = explode("/", $name->path);
        $last = end($explode);
        $slice = array_slice($explode, 1, 2, true);
        $implode = implode(" ", $slice);
        $replace = str_replace(" ", "/", $implode);
        $path = $replace . '/' . $last;

        DB::table('uploads')
            ->where('id_upload', '=' , $id)
            ->delete();

        unlink(storage_path() . '/upload/' . $path );
        Session::flash('message', 'Fichier Supprimé)');
        return redirect()->action('UploadsController@index');
    }

    public function upload()
    {
        $this->file_name = Input::file('file')->getClientOriginalName();
        $this->file_size = Input::file('file')->getSize();
        $this->file_mime = Input::file('file')->getMimeType();



        $size = DB::table('uploads')
            ->where('user_id', "=" , Auth::user()->id)
            ->sum('size');

        $query = DB::table('uploads')
            ->where('name', '=', $this->file_name)
            ->where('user_id', '=', Auth::user()->id)
            ->get();

        if ($size < 52428800) {
            if (count($query) <= 0) {
                if ($this->file_size <= 10000000)
                {
                    if ($this->file_mime == 'image/jpeg' || $this->file_mime == 'image/png')
                    {
                        $this->file_path = Input::file('file')->move($this->path . '/upload/' . Auth::user()->id . '/images', $this->file_name);
                        $this->file_path = $this->file_path->getRealPath();
                        $explode = explode("/", $this->file_path);
                        $last = end($explode);
                        $count = array_slice($explode, -3 , 2, true);
                        $implode = implode(' ', $count);
                        $this->file_path = str_replace(" ", "/", $implode);
                        $this->file_path = 'file/' . $this->file_path . '/' .$last;
                    }
                    else if ($this->file_mime == 'video/mp4')
                    {
                        $this->file_path = Input::file('file')->move($this->path . '/upload/' . Auth::user()->id . '/movies', $this->file_name);
                        $this->file_path = $this->file_path->getRealPath();
                        $explode = explode("/", $this->file_path);
                        $last = end($explode);
                        $count = array_slice($explode, -3 , 2, true);
                        $implode = implode(' ', $count);
                        $this->file_path = str_replace(" ", "/", $implode);
                        $this->file_path = 'file/' . $this->file_path . '/' .$last;
                    }
                    else if ($this->file_mime == 'audio/mpeg')
                    {
                        $this->file_path = Input::file('file')->move($this->path . '/upload/' . Auth::user()->id . '/musics', $this->file_name);
                        $this->file_path = $this->file_path->getRealPath();
                        $explode = explode("/", $this->file_path);
                        $last = end($explode);
                        $count = array_slice($explode, -3 , 2, true);
                        $implode = implode(' ', $count);
                        $this->file_path = str_replace(" ", "/", $implode);
                        $this->file_path = 'file/' . $this->file_path . '/' .$last;
                    }
                    else {
                        $this->file_path = Input::file('file')->move($this->path . '/upload/' . Auth::user()->id . '/other', $this->file_name);
                        $this->file_path = $this->file_path->getRealPath();
                        $explode = explode("/", $this->file_path);
                        $last = end($explode);
                        $count = array_slice($explode, -3 , 2, true);
                        $implode = implode(' ', $count);
                        $this->file_path = str_replace(" ", "/", $implode);
                        $this->file_path = 'file/' . $this->file_path . '/' .$last;
                    }

                    DB::table('uploads')
                        ->insert([
                            'name' => $this->file_name,
                            'size' => $this->file_size,
                            'path' => $this->file_path,
                            'mime' => $this->file_mime,
                            'user_id' => Auth::user()->id
                        ]);

                    Session::flash('message', 'Fichier bien uplodé');

                }else {
                    Session::flash('error', 'Fichier trop lourd');
                }
            }else {
                Session::flash('error', 'Un fichier du même nom existe déjà');
            }
        }else {
            Session::flash('error', 'Vous avez dépassé votre limite de 50 Mo, merci de supprimer des fichiers pour libérer de l\'espace où passer votre compte en premiums pour 12€ par mois');
        }
    }
}

