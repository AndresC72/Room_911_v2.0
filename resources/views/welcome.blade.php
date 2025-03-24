<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Laboratory ROOM_911</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <style>
        body {
            background: #0a0a0a;
            color: #fff;
            font-family: 'Arial', sans-serif;
            overflow: hidden;
        }
        .loading-screen {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: #000;
            display: flex;
            align-items: center;
            justify-content: center;
            z-index: 9999;
            flex-direction: column;
        }
        .loading-screen img {
            width: 150px;
            animation: fill 2s infinite;
        }
        .loading-screen h1 {
            font-size: 1.5rem;
            color: #0ff;
            margin-top: 20px;
            animation: flicker 1.5s infinite alternate;
        }
        @keyframes flicker {
            0% { opacity: 1; }
            100% { opacity: 0.2; }
        }
        @keyframes fill {
            0% { transform: scaleY(0); }
            50% { transform: scaleY(0.5); }
            100% { transform: scaleY(1); }
        }
        .container {
            opacity: 0;
            transition: opacity 1s ease-in-out;
        }
        .neon-border {
            border: 2px solid #0ff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0px 0px 15px #0ff;
        }
        .hidden {
            display: none;
        }
        .access-card {
            background: #1a1a1a;
            border: 2px solid #0ff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0px 0px 15px #0ff;
            margin-top: 20px;
            text-align: center;
        }
        .access-card img {
            width: 100px;
            margin-bottom: 10px;
        }
        .access-card h3 {
            color: #0ff;
            margin-bottom: 10px;
        }
        .access-card p {
            color: #fff;
        }
    </style>
</head>
<body>
    <!-- Pantalla de carga -->
    <div class="loading-screen">
        <img src="https://cdn-icons-png.flaticon.com/512/4320/4320337.png" alt="Laboratory Test Tubes">
        <h1>Loading...</h1>
    </div>

    <!-- Contenido principal -->
    <div class="container mt-5 text-center">
        <h1 class="text-neon">Welcome to Laboratory ROOM_911</h1>
        <p>Please Scan Your Access Employee Card to Continue</p>
        <div class="neon-border p-3 mt-3">
            <input type="text" id="accessCode" class="form-control text-center" placeholder="Código de acceso" disabled>
            <button id="scanBtn" class="btn btn-primary mt-3">Escanear</button>
            <div id="authButtons" class="hidden mt-3">
                <button id="loginBtn" class="btn btn-success">Login</button>
                <button id="registerBtn" class="btn btn-secondary">Registro</button>
            </div>
        </div>

        <!-- Tarjeta de acceso -->
        <div class="access-card">
            <img src="https://cdn-icons-png.flaticon.com/512/4320/4320337.png" alt="Access Card">
            <h3>Access Card</h3>
            <p>Scan your card to proceed</p>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            // Simular pantalla de carga
            setTimeout(function() {
                $('.loading-screen').fadeOut(500, function() {
                    $('.container').css('opacity', '1');
                });
            }, 4000);

            // Simular escaneo de tarjeta
            $('#scanBtn').click(function() {
                let code = '';
                let interval = setInterval(function() {
                    if (code.length < 6) {
                        code += Math.floor(Math.random() * 10);
                        $('#accessCode').val(code);
                    } else {
                        clearInterval(interval);
                        $('#scanBtn').hide();
                        $('#authButtons').removeClass('hidden');
                    }
                }, 300);
            });

            // Redirección de botones
            $('#loginBtn').click(function() {
                window.location.href = '/login';
            });

            $('#registerBtn').click(function() {
                window.location.href = '/register';
            });
        });
    </script>
</body>
</html>