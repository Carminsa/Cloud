@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">Modifier le compte de <strong><?= htmlspecialchars($user->username) ?></strong></div>
                    <div class="panel-body">
                        @if(\Session::get('message'))
                            <div class="alert alert-success fade-in">
                                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                <p> {!! \Session::get('message') !!}</p>
                            </div>
                        @endif
                        <form class="form-horizontal" role="form"  action="{{ url('/admin/' . $user->id . '/update_user') }}" method="POST">
                            {{ csrf_field() }}

                            <div class="form-group{{ $errors->has('username') ? ' has-error' : '' }}">
                                <label for="username" class="col-md-4 control-label">Username</label>

                                <div class="col-md-6">
                                    <input id="username" type="text" class="form-control" name="username" placeholder="<?= htmlspecialchars($user->username) ?>"  autofocus>


                                    @if ($errors->has('username'))
                                        <span class="help-block">
                                        <strong>{{ $errors->first('username') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                                <label for="email" class="col-md-4 control-label">Adresse E-mail</label>

                                <div class="col-md-6">
                                    <input id="email" type="email" class="form-control" name="email" placeholder="<?= htmlspecialchars($user->email) ?>">

                                    @if ($errors->has('email'))
                                        <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group{{ $errors->has('firstname') ? ' has-error' : '' }}">
                                <label for="firstname" class="col-md-4 control-label">Prénom</label>

                                <div class="col-md-6">
                                    <input id="firstname" type="text" class="form-control" name="firstname" placeholder="<?= htmlspecialchars($user->firstname) ?>"  autofocus>


                                    @if ($errors->has('firstname'))
                                        <span class="help-block">
                                        <strong>{{ $errors->first('firstname') }}</strong>
                                    firstname
                                    @endif
                                </div>
                            </div>

                            <div class="form-group{{ $errors->has('lastname') ? ' has-error' : '' }}">
                                <label for="lastname" class="col-md-4 control-label">Nom de Famille</label>

                                <div class="col-md-6">
                                    <input id="lastname" type="text" class="form-control" name="lastname" placeholder="<?= htmlspecialchars($user->lastname) ?>"  autofocus>


                                    @if ($errors->has('lastname'))
                                        <span class="help-block">
                                        <strong>{{ $errors->first('lastname') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>


                            <div class="form-group{{ $errors->has('birthdate') ? ' has-error' : '' }}">
                                <label for="birthdate" class="col-md-4 control-label">Date de Naissance</label>

                                <div class="col-md-6">
                                    <input id="birthdate" type="date" class="form-control" name="birthdate" placeholder="birthdate" >

                                    @if ($errors->has('birthdate'))
                                        <span class="help-block">
                                    <strong>{{ $errors->first('birthdate') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group{{ $errors->has('active') ? ' has-error' : '' }}">
                                <label for="active" class="col-md-4 control-label">Status du Compte</label>

                                <div class="col-md-6">
                                    <select class="form-control" name="active" id="active">
                                        <option value="0" <?php if ($user->active == 0 ) { ?> selected <?php } ?>>Compté Désactivé</option>
                                        <option value="1"  <?php if ($user->active == 1 ) { ?> selected <?php } ?>>Compte Activé</option>
                                    </select>

                                    @if ($errors->has('active'))
                                        <span class="help-block">
                                    <strong>{{ $errors->first('active') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>


                            <div class="form-group">
                                <div class="col-md-5 col-md-push-4">
                                    <button type="submit" class="btn btn-primary">
                                        Modifier
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
