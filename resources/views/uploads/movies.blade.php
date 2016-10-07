@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <h3 class=" panel-heading">
                        <div class="col-md-offset-5"></div>
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

                        <?php foreach ($pics as $value){ ?>
                        <video class="size_image" controls src="<?= url($value->path) ?>"></video>
                        <?php  } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
