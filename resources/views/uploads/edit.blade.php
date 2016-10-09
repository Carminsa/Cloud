@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
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
                        @if(\Session::get('error'))
                            <div class="alert alert-danger fade-in">
                                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                <p> {!! \Session::get('error') !!}</p>
                            </div>
                        @endif

                        <form class="form-horizontal" role="form"  action="{{ url('/uploads/' . $uploads->id_upload) }}" method="POST">
                            {{ csrf_field() }}
                            <input type="hidden" name="_method" value="put" />

                            <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                                <label for="name" class="col-md-4 control-label"></label>

                                <div class="col-md-6">
                                    <input id="name" type="text" class="form-control" name="name" placeholder="Changer le nom de votre fichier">


                                    @if ($errors->has('name'))
                                        <span class="help-block">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group{{ $errors->has('status') ? ' has-error' : '' }}">
                                <label for="status" class="col-md-4 control-label"></label>

                                <div class="col-md-6">
                                    <select class="form-control" name="status" id="status">
                                        <option value="0" <?php if ($uploads->private == 0 ) { ?> selected <?php } ?>>Privée</option>
                                        <option value="1"  <?php if ($uploads->private == 1 ) { ?> selected <?php } ?>>Public</option>
                                    </select>

                                    @if ($errors->has('status'))
                                        <span class="help-block">
                                        <strong>{{ $errors->first('status') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="col-md-12 col-md-push-9">
                                    <button type="submit" class="btn btn-primary">
                                        Modifier
                                    </button>
                                </div>
                            </div>
                        </form>
                        <div class="">
                            <form id="uploads_delete" action="{{ url('/uploads/' . $uploads->id_upload) }}}" method="POST">
                                {{ csrf_field() }}
                                {{ method_field('DELETE') }}
                                <input type="submit" value="Supprimer" class="btn btn-danger">
                            </form>
                            <form id="uploads_download" action="{{ url($uploads->path) }}" role="form" method="get">
                                {{ csrf_field() }}
                                <input type="submit" value="Télécharger" class="btn btn-danger">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
