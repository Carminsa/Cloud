<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Feu Cloud</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Styles -->
    <style>
        html, body {
            background-color: #fff;
            color: #636b6f;
            font-family: 'Raleway', sans-serif;
            font-weight: 100;
            height: 100vh;
            margin: 0;
        }

        .full-height {
            height: 100vh;
        }

        .flex-center {
            align-items: center;
            display: flex;
            justify-content: center;
        }

        .position-ref {
            position: relative;
        }

        .top-right {
            position: absolute;
            right: 10px;
            top: 18px;
        }

        .content {
            text-align: center;
        }

        .title {
            font-size: 84px;
        }

        .links > a {
            color: #636b6f;
            padding: 0 25px;
            font-size: 12px;
            font-weight: 600;
            letter-spacing: .1rem;
            text-decoration: none;
            text-transform: uppercase;
        }

        .m-b-md {
            margin-bottom: 30px;
        }
    </style>
</head>
<body>
<div class="panel-body">
    @if(\Session::get('message'))
        <div class="alert alert-warning fade-in">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <p> {!! \Session::get('message') !!}</p>
        </div>
    @endif
</div>
<div class="flex-center position-ref full-height">

    @if (Auth::guest())
        <div class="top-right links">
            <a href="{{ url('/login') }}">Connexion</a>
            <a href="{{ url('/register') }}">Inscription</a>
        </div>
    @else
        <div class="top-right links">
            <a href="{{ url('/home') }}">Accueil</a>
            <a href="{{ url('/logout') }}">Déconnexion</a>
        </div>

    @endif

    <div class="content">
        <div class="title m-b-md">
            -Bienvenue sur Feu Cloud-
        </div>

        {{--<div class="links">--}}
        {{--<a href="https://laravel.com/docs">Documentation</a>--}}
        {{--<a href="https://laracasts.com">Laracasts</a>--}}
        {{--<a href="https://laravel-news.com">News</a>--}}
        {{--<a href="https://forge.laravel.com">Forge</a>--}}
        {{--<a href="https://github.com/laravel/laravel">GitHub</a>--}}
        {{--</div>--}}
    </div>
</div>
</body>
</html>
