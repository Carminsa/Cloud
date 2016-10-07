<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Mail;
use Session;
use Illuminate\Mail\Mailer;
use Illuminate\Mail\Message;

use App\Http\Requests;

class ContactController extends Controller
{

    private $email;
    private $mailer;

    public function __construct(Mailer $mailer)
    {
        $this->mailer = $mailer;
    }

    public function create()
    {
        return view('contact/create');
    }

    public function store(Request $request)
    {

        $end_world="";
        $timer = DB::table('contact')
            ->where('user_id', '=' , Auth::user()->id)
            ->orderBy('date', 'DESC')
            ->first();

       if (isset($timer->date))
       {
          $end_world = $timer->date;
       }else {
           $end_world = "2500-10-07 16:51:32";
       }

        $date = date('Y-m-d H:i:s', strtotime('+1 hour'));
        $bool = $date < $end_world;

//        var_dump($date);
//        var_dump($end_world);
//        var_dump($bool);
//        die;

        $number = DB::table('contact')
            ->where('date', '>', $date)
            ->where('user_id', '=', Auth::user()->id)
            ->get();

        $count = count($number);

        if ($bool && $count >= 2) {

            Session::flash('error', 'Vous ne pouvez qu\'envoyer que 2 emails 
                toutes les heures, merci de patienter');
            return Redirect::to('contact/create');
        }
        else {
            $rules = array(
                'object' => 'min:3|required',
                'content' => 'min:1|required',
            );

            $emails = [];
            $admin = DB::table('users')
                ->select('email')
                ->where('admin' ,'=' , 1)
                ->get();

            foreach ($admin as $value)
            {
                array_push($emails, $value->email);
            }
            $this->email = $emails;

            $validator = Validator::make(Input::all(), $rules);

            if ($validator->fails())
            {
                return Redirect::to('contact/create')
                    ->withErrors($validator);
            }else {

                $object = $request->input('object');
                $content = $request->input('content');

                Mail::raw($content, function ($message) use ($object) {
                    $message->from(Auth::user()->email);
                    $message->to($this->email)->subject('Un Utilisateur vient de vous contacter - ' . $object);
                });

                DB::table('contact')
                    ->insert(['object' => $request->input('object'),
                        'content' => $request->input('content'),
                        'user_id' => Auth::user()->id
                    ]);
                Session::flash('message', 'Message envoyé');
                return Redirect::to('contact/create');
            }
        }
    }
}
