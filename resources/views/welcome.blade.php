<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Laboratorio ROOM_911</title>
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
        }
        .loading-screen h1 {
            font-size: 2rem;
            color: #0ff;
            animation: flicker 1.5s infinite alternate;
        }
        @keyframes flicker {
            0% { opacity: 1; }
            100% { opacity: 0.2; }
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
    </style>
</head>
<body>
    <div class="loading-screen">
        <h1>Cargando...</h1>
    </div>
    <div class="container mt-5 text-center">
        <h1 class="text-neon">Bienvenido al Laboratorio ROOM_911</h1>
        <p>Escanea tu acceso para continuar</p>
        <div class="neon-border p-3 mt-3">
            <input type="text" id="accessCode" class="form-control text-center" placeholder="Código de acceso" disabled>
            <button id="scanBtn" class="btn btn-primary mt-3">Escanear</button>
            <div id="authButtons" class="hidden mt-3">
                <button id="loginBtn" class="btn btn-success">Login</button>
                <button id="registerBtn" class="btn btn-secondary">Registro</button>
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function() {
            setTimeout(function() {
                $('.loading-screen').fadeOut(500, function() {
                    $('.container').css('opacity', '1');
                });
            }, 2000);

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
