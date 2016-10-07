@extends('layouts.app')

@section('content')

    <div class="container col-md-10 col-md-push-1">
        <div class="row">
            <div class="paginate">
                {{ $user->links() }}
            </div>
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
                    <tr><?php if ($users->username !== 'root'){ ?>
                        <td><?= htmlspecialchars($users->id) ?></td>
                        <td><?= htmlspecialchars($users->username); ?></td>
                        <td><?= htmlspecialchars($users->firstname); ?></td>
                        <td><?= htmlspecialchars($users->lastname); ?></td>
                        <td><?= htmlspecialchars($users->email); ?></td>
                        <td><?php if ( $users->admin == 0 ){echo "Non"; } else { echo "Oui"; } ?></td>
                        <td><?= htmlspecialchars($users->birthdate); ?></td>

                        <td class="actions">

                            <a href="{{ url('/admin/' . $users->id . '/edit') }}">Modifier</a>
                            <a href="{{ url('/admin/' . $users->id) }}">Voir</a>
                        </td>
                    </tr>
                    <?php } ?>
                @endforeach
                </tbody>
            </table>
        </div>

    </div>
@endsection
