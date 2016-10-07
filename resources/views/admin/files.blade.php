@extends('layouts.app')

@section('content')

    <div class="container col-md-10 col-md-push-1">
        <div class="row">
            <div class="paginate">
                {{ $upload->links() }}
            </div>
            <table class="table table-striped" cellpadding="0" cellspacing="0">
                <thead>
                <tr>
                    <th scope="row">#</th>
                    <th scope="row">De</th>
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
                @foreach($upload as $uploads)
                    <tr>
                        <td><?= htmlspecialchars($uploads->id_upload) ?></td>
                        <td><?= htmlspecialchars($uploads->username); ?></td>
                        <td><?= htmlspecialchars($uploads->name); ?></td>
                        <td><?= htmlspecialchars($uploads->size); ?> <span>Ko</span> </td>
                        <td class="spacing"><?= htmlspecialchars($uploads->path); ?></td>
                        <td><?php if ( $uploads->private == 0 ){echo "Non"; } else { echo "Oui"; } ?></td>
                        <td><?= htmlspecialchars($uploads->mime); ?></td>
                        <td><?= htmlspecialchars($uploads->date); ?></td>
                        <td class="actions">
                            <a href="{{ url('/admin/' . $uploads->id_upload . '/edit_file') }}">Modifier</a>
                            <a href="">Voir</a>
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>

    </div>
@endsection
