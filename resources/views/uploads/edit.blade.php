@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <?php foreach ($upload as $uploads){ ?>
                    <h3 class=" panel-heading">
                        <div class="col-md-offset-5"><?= htmlspecialchars($uploads->name) ?></div>
                    </h3>
                    <div class="panel-body">
                        @if(\Session::get('message'))
                            <div class="alert alert-success fade-in">
                                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                <p> {!! \Session::get('message') !!}</p>
                            </div>
                        @endif
                        <form class="form-horizontal" role="form"  action="{{ url('/users/' . Auth::user()->id) }}" method="POST">
                            {{ csrf_field() }}
                            <input type="hidden" name="_method" value="put" />
                            <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                                <label for="name" class="col-md-4 control-label"></label>

                                <div class="col-md-6">
                                    <input id="name" type="text" class="form-control" name="name" placeholder="<?= htmlspecialchars($uploads->name) ?>" required autofocus>


                                    @if ($errors->has('name'))
                                        <span class="help-block">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                                <label for="email" class="col-md-4 control-label"></label>

                                <div class="col-md-6">
                                    <input id="email" type="email" class="form-control" name="email" placeholder="">

                                    @if ($errors->has('email'))
                                        <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                                <label for="password" class="col-md-4 control-label">Password</label>

                                <div class="col-md-6">
                                    <input id="password" type="password" class="form-control" name="password" placeholder="******" >

                                    @if ($errors->has('password'))
                                        <span class="help-block">
                                    <strong>{{ $errors->first('password') }}</strong>
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
                                <?php } ?>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
