@extends('layouts.app')

@section('content')

    <div class="container">
        @if(\Session::get('message'))
            <div class="alert alert-success fade-in">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <p> {!! \Session::get('message') !!}</p>
            </div>
        @endif
        @if(\Session::get('error'))
            <div class="alert alert-warning fade-in">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <p> {!! \Session::get('error') !!}</p>
            </div>
        @endif
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">

                    <div class="panel-heading ">
                        <h4 class="col-md-offset-4">Uploader vos fichiers</h4>

                    </div>
                    <div class="panel-body">
                        <p id="send"> Envoyer plusieurs Fichier (tous formats | max. 10 Mo) :</p>
                        <form class="form-horizontal dropzone" role="form" method="POST" enctype="multipart/form-data" action="{{ url('/uploads') }}">
                            {{ csrf_field() }}

                            <div class="form-group{{ $errors->has('file') ? ' has-error' : '' }}">
                                <label for="file" class="col-md-4 control-label"></label>

                                <div class="col-md-6">
                                    <div class="fallback">
                                        <input name="file[]" type="file" multiple />
                                        <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                                    </div>

                                    @if ($errors->has('file'))
                                        <span class="help-block">
                                        <strong>{{ $errors->first('file') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
@endsection
