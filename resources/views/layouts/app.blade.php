<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    {{--<title>{{ config('app.name', 'Laravel') }}</title>--}}
    <title>Feu Cloud</title>

    <!-- Styles -->
    <link href="/css/app.css" rel="stylesheet">
    <link rel="stylesheet" href="css/dropzone.css">
    <link rel="stylesheet" href="/css/style.css">

    <!-- Scripts -->
    <script>
        window.Laravel = <?php echo json_encode([
                'csrfToken' => csrf_token(),
        ]); ?>
    </script>
    <script src="js/dropzone.js"></script>

</head>
<body>
<nav class="navbar navbar-default navbar-static-top">
    <div class="container">
        <div class="navbar-header">

            <!-- Collapsed Hamburger -->
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navbar-collapse">
                <span class="sr-only">Toggle Navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <!-- Branding Image -->
            <a class="navbar-brand" href="{{ url('/') }}">
                Feu Cloud
                {{--                    {{ config('app.name', 'Laravel') }}--}}
            </a>
        </div>

        <div class="collapse navbar-collapse" id="app-navbar-collapse">
            <!-- Left Side Of Navbar -->
            <ul class="nav navbar-nav">
                &nbsp;
            </ul>

            <!-- Right Side Of Navbar -->
            <ul class="nav navbar-nav navbar-right">
                <!-- Authentication Links -->
                @if (Auth::guest())
                    <li><a href="{{ url('/login') }}">Connexion</a></li>
                    <li><a href="{{ url('/register') }}">Inscription</a></li>
                @elseif(Auth::user()->admin)
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                            Admin <span class="caret"></span>
                        </a>

                        <ul class="dropdown-menu" role="menu">
                            <li>
                                <a href="{{ url('/admin' ) }}"
                                   onclick="event.preventDefault();
                                                 document.getElementById('admin').submit();">
                                    Accueil
                                </a>

                                <form id="admin" action="{{ url('/admin' ) }}" method="get" style="display: none;">
                                    {{ csrf_field() }}
                                </form>
                            </li>
                            <li>
                                <a href="{{ url('/admin/users' ) }}"
                                   onclick="event.preventDefault();
                                                 document.getElementById('users_admin').submit();">
                                    Tous les Utilisateurs
                                </a>

                                <form id="users_admin" action="{{ url('/admin/users' ) }}" method="get" style="display: none;">
                                    {{ csrf_field() }}
                                </form>
                            </li>

                            <li>
                                <a href="{{ url('/admin/files' ) }}"
                                   onclick="event.preventDefault();
                                                 document.getElementById('files_admin').submit();">
                                    Tous les Uploads
                                </a>

                                <form id="files_admin" action="{{ url('/admin/files' ) }}" method="get" style="display: none;">
                                    {{ csrf_field() }}
                                </form>
                            </li>

                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                            Uploads <span class="caret"></span>
                        </a>

                        <ul class="dropdown-menu" role="menu">
                            <li>
                                <a href="{{ url('/uploads' ) }}"
                                   onclick="event.preventDefault();
                                                 document.getElementById('show-form').submit();">
                                    Mes Uploads
                                </a>

                                <form id="show-form" action="{{ url('/uploads') }}" method="get" style="display: none;">
                                    {{ csrf_field() }}
                                </form>
                            </li>

                            <li>
                                <a href="{{ url('/uploads/' . Auth::user()->id ) }}"
                                   onclick="event.preventDefault();
                                                 document.getElementById('see_img').submit();">
                                    Mes Images
                                </a>

                                <form id="see_img" action="{{ url('/uploads/' . Auth::user()->id) }}" method="get" style="display: none;">
                                    {{ csrf_field() }}
                                </form>
                            </li>

                            <li>
                                <a href="{{ url('/uploads/movies/' . Auth::user()->id ) }}"
                                   onclick="event.preventDefault();
                                                 document.getElementById('movies').submit();">
                                    Mes Vidéos
                                </a>

                                <form id="movies" action="{{ url('/uploads/movies/' . Auth::user()->id) }}" method="get" style="display: none;">
                                    {{ csrf_field() }}
                                </form>
                            </li>

                            <li>
                                <a href="{{ url('/uploads/musics/' . Auth::user()->id ) }}"
                                   onclick="event.preventDefault();
                                                 document.getElementById('musics').submit();">
                                    Mes Musiques
                                </a>

                                <form id="musics" action="{{ url('/uploads/musics/' . Auth::user()->id) }}" method="get" style="display: none;">
                                    {{ csrf_field() }}
                                </form>
                            </li>



                            <li>
                                <a href="{{ url('/uploads/list_public' ) }}"
                                   onclick="event.preventDefault();
                                                 document.getElementById('all-form').submit();">
                                    Uploads Public
                                </a>

                                <form id="all-form" action="{{ url('/uploads/list_public') }}" method="get" style="display: none;">
                                    {{ csrf_field() }}
                                </form>
                            </li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                            {{ Auth::user()->username }} <span class="caret"></span>
                        </a>

                        <ul class="dropdown-menu" role="menu">

                            <li>
                                <a href="{{ url('/logout') }}"
                                   onclick="event.preventDefault();
                                                 document.getElementById('logout-form').submit();">
                                    Déconnexion
                                </a>

                                <form id="logout-form" action="{{ url('/logout') }}" method="POST" style="display: none;">
                                    {{ csrf_field() }}
                                </form>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="{{ url('/contact/create') }}" onclick="event.preventDefault();
                                                 document.getElementById('contact').submit();">
                            Contact
                        </a>
                        <form id="contact" action="{{ url('/contact/create') }}" method="get" style="display: none;">
                            {{ csrf_field() }}
                        </form>
                    </li>
                @else
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                            Uploads <span class="caret"></span>
                        </a>

                        <ul class="dropdown-menu" role="menu">
                            <li>
                                <a href="{{ url('/uploads' ) }}"
                                   onclick="event.preventDefault();
                                                 document.getElementById('show-form').submit();">
                                    Mes Uploads
                                </a>

                                <form id="show-form" action="{{ url('/uploads') }}" method="get" style="display: none;">
                                    {{ csrf_field() }}
                                </form>
                            </li>


                            <li>
                                <a href="{{ url('/uploads/' . Auth::user()->id ) }}"
                                   onclick="event.preventDefault();
                                                 document.getElementById('see_img').submit();">
                                    Mes Images
                                </a>

                                <form id="see_img" action="{{ url('/uploads/' . Auth::user()->id) }}" method="get" style="display: none;">
                                    {{ csrf_field() }}
                                </form>
                            </li>

                            <li>
                                <a href="{{ url('/uploads/movies/' . Auth::user()->id ) }}"
                                   onclick="event.preventDefault();
                                                 document.getElementById('movies').submit();">
                                    Mes Vidéos
                                </a>

                                <form id="movies" action="{{ url('/uploads/movies/' . Auth::user()->id) }}" method="get" style="display: none;">
                                    {{ csrf_field() }}
                                </form>
                            </li>

                            <li>
                                <a href="{{ url('/uploads/musics/' . Auth::user()->id ) }}"
                                   onclick="event.preventDefault();
                                                 document.getElementById('musics').submit();">
                                    Mes Musiques
                                </a>

                                <form id="musics" action="{{ url('/uploads/musics/' . Auth::user()->id) }}" method="get" style="display: none;">
                                    {{ csrf_field() }}
                                </form>
                            </li>
                            <li>
                                <a href="{{ url('/uploads/list_public' ) }}"
                                   onclick="event.preventDefault();
                                                 document.getElementById('all-form').submit();">
                                    Uploads Public
                                </a>

                                <form id="all-form" action="{{ url('/uploads/list_public') }}" method="get" style="display: none;">
                                    {{ csrf_field() }}
                                </form>
                            </li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                            {{ Auth::user()->username }} <span class="caret"></span>
                        </a>

                        <ul class="dropdown-menu" role="menu">

                            <li>
                                <a href="{{ url('/logout') }}"
                                   onclick="event.preventDefault();
                                                 document.getElementById('logout-form').submit();">
                                    Déconnexion
                                </a>

                                <form id="logout-form" action="{{ url('/logout') }}" method="POST" style="display: none;">
                                    {{ csrf_field() }}
                                </form>
                            </li>


                        </ul>
                    <li class="dropdown">
                        <a href="{{ url('contact/create') }}"  onclick="event.preventDefault();
                                                 document.getElementById('contact').submit();">
                            Contact
                        </a>
                        <form id="contact" action="{{ url('contact/create') }}" method="get" style="display: none;">
                            {{ csrf_field() }}
                        </form>
                    </li>
                @endif
            </ul>
        </div>
    </div>
</nav>

@yield('content')

<!-- Scripts -->
<script src="/js/app.js"></script>
</body>
</html>
