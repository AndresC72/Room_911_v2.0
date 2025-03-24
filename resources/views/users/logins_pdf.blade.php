<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login History</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h2>Login History for {{ $user->name }}</h2>
    @if($startDate || $endDate)
        <p>Filtered by:
            @if($startDate) From: {{ $startDate }} @endif
            @if($endDate) To: {{ $endDate }} @endif
        </p>
    @endif
    <table>
        <thead>
            <tr>
                <th>#</th>
                <th>Date and Hour</th>
                <th>IP Address</th>
            </tr>
        </thead>
        <tbody>
            @foreach($logins as $login)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $login->login_at }}</td>
                    <td>{{ $login->ip_address }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>