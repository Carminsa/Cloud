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
                <form class="form-horizontal" role="form" action="{{ url('/contact') }}" method="POST">
                    {{ csrf_field() }}

                    <div class="form-group{{ $errors->has('object') ? ' has-error' : '' }}">
                        <label for="object" class="col-md-4 control-label"></label>
                    <input type="text" class="form-control" name="object" placeholder="Objet">
                        @if ($errors->has('object'))
                            <span class="help-block">
                                        <strong>{{ $errors->first('object') }}</strong>
                                    </span>
                        @endif
                    <br>

                        <div class="form-group{{ $errors->has('content') ? ' has-error' : '' }}">
                            <label for="content" class="col-md-4 control-label"></label>

                            <textarea class="form-control" name="content" id="" cols="30" rows="10">
                </textarea>
                            @if ($errors->has('content'))
                                <span class="help-block">
                                        <strong>{{ $errors->first('content') }}</strong>
                                    </span>
                            @endif
                    <input class="btn btn-primary" type="submit" value="Envoyer">
                </form>
            </div>
        </div>
    </div>
@endsection
