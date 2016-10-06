@extends('layouts.app')

@section('content')

    <div class="container col-md-10 col-md-push-1">
        <div class="row">
            <table class="table table-striped" cellpadding="0" cellspacing="0">
                <thead>
                <tr>
                    <th scope="row">id</th>
                    <th scope="row">Login</th>
                    <th scope="row">Prénom</th>
                    <th scope="row">Nom</th>
                    <th scope="row">Email</th>
                    <th scope="row">Admin</th>
                    <th scope="row">Date Naissance</th>
                    <th scope="row">Action</th>
                </tr>
                </thead>
                <tbody>
                @foreach($user as $users)
                    <tr>
                        <td><?= htmlspecialchars($users->id) ?></td>
                        <td><?= htmlspecialchars($users->username); ?></td>
                        <td><?= htmlspecialchars($users->firstname); ?></td>
                        <td><?= htmlspecialchars($users->lastname); ?></td>
                        <td><?= htmlspecialchars($users->email); ?></td>
                        <td><?php if ( $users->admin == 0 ){echo "Non"; } else { echo "Oui"; } ?></td>
                        <td><?= htmlspecialchars($users->birthdate); ?></td>
                        <td class="actions">
                            <?php if($users->active == 1){  ?>
                            <a href="{{ url('/destroy/' . $users->id) }}"
                               onclick="event.preventDefault();
                                document.getElementById('destroy.admin').submit();">
                                <form id="destroy.admin" action="{{ url('/admin/' . $users->id) }}" role="form" method="POST" style="display: none;">
                                    {{ csrf_field() }}
                                    {{ method_field('DELETE') }}
                                </form>
                                Désactiver
                            </a>
                            <?php } else { ?>
                            <a href="{{ url('/update/' . $users->id) }}"
                               onclick="event.preventDefault();
                                document.getElementById('enable.admin').submit();">
                                <form id="enable.admin" action="{{ url('/admin/' . $users->id) }}" role="form" method="POST" style="display: none;">
                                    {{ csrf_field() }}
                                    <input type="hidden" name="_method" value="put" />
                                </form>
                                Réactiver
                            </a>
                            <?php } ?>

                            <a href="{{ url('/admin/' . $users->id) }}">Voir</a>
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
        <div class="row">
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
                <hr>
                @foreach($upload as $uploads)
                    <tr>
                        <td><?= htmlspecialchars($uploads->id_upload) ?></td>
                        <td><?= htmlspecialchars($uploads->name); ?></td>
                        <td><?= htmlspecialchars($uploads->size); ?> <span>Ko</span> </td>
                        <td class="spacing"><?= htmlspecialchars($uploads->path); ?></td>
                        <td><?php if ( $uploads->private == 0 ){echo "Non"; } else { echo "Oui"; } ?></td>
                        <td><?= htmlspecialchars($uploads->mime); ?></td>
                        <td><?= htmlspecialchars($uploads->date); ?></td>
                        <td class="actions">
                            <a href="{{ url('/admin/' . $uploads->id_upload . '/edit') }}">Modifier</a>
                            <a href="">Voir</a>
                        </td>
                    </tr>
                @endforeach

                </tbody>
            </table>
        </div>
    </div>
@endsection
