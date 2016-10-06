@extends('layouts.app')

@section('content')

    <div class="container col-md-10 col-md-push-1">
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
            <div class="paginate">
                {{ $upload->links() }}
            </div>
            <table class="table table-striped" cellpadding="0" cellspacing="0">
                <thead>
                <tr>
                    <th scope="row">#</th>
                    <th scope="row">Nom</th>
                    <th class="spacing" scope="row">Taille</th>
                    <th scope="row">Path</th>
                    <th scope="row">Public</th>
                    <th scope="row">Type</th>
                    <th scope="row">Date</th>
                    <th scope="row">Action</th>
                </tr>
                </thead>
                <tbody>
                <?php $i = 1; ?>
                @foreach($upload as $uploads)
                    <tr>
                        <td><?= htmlspecialchars($i++) ?></td>
                        <td><?= htmlspecialchars($uploads->name); ?></td>
                        <td><?= htmlspecialchars($uploads->size); ?> <span>Ko</span> </td>
                        <td class="spacing"><?= htmlspecialchars($uploads->path); ?></td>
                        <td><?php if ( $uploads->private == 0 ){echo "Non"; } else { echo "Oui"; } ?></td>
                        <td><?= htmlspecialchars($uploads->mime); ?></td>
                        <td><?= htmlspecialchars($uploads->date); ?></td>
                        <td class="actions">
                            <a href="{{ url('/uploads/' . $uploads->id_upload . '/edit') }}">Modifier</a>
                            <a href="">Voir</a>
                        </td>
                    </tr>
                @endforeach

                </tbody>
            </table>
        </div>
    </div>
@endsection
