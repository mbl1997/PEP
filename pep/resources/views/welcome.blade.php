<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>PEP</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">
        <link rel="icon" href="/logo2.png" type="image/x-icon">
        
        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Raleway', sans-serif;
                font-weight: 100;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 12px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
        </style>
    </head>
    <body>
        <div class="flex-center position-ref full-height">
            <div>
            @if (Route::has('login'))
                <div class="top-right links">
                @if(auth('web')->user() || auth('instrutor')->user() || auth('aluno')->user())
                    @if(auth('web')->user())
                        <a href="{{ url('/home') }}">Admin Home</a>
                    @endif
                    @if(auth('instrutor')->user())
                        <a href="{{ url('/instrutor/home') }}" align="right">
                            Home - Instrutor {{ auth('instrutor')->user()->name }} {{ auth('instrutor')->user()->lastname }}
                        </a>
                    @endif
                    @if(auth('aluno')->user())
                        <a href="{{ url('/aluno/home') }}">
                            Home - Aluno {{ auth('aluno')->user()->name }} {{ auth('aluno')->user()->lastname }}
                        </a>
                    @endif
                @else
                    <a href="{{ url('/selectLogin') }}">Entrar</a>
                    <a href="{{ url('/selectRegister') }}">Criar Conta</a>
                @endif
                </div>
            @endif
            </div>

            <div class="content">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        
                        <img src="logo.png" height=200>
                        <div class="title m-b-md">
                            PEP
                        </div>
                        <h2>Programa de Exercícios Pessoal</h2>
                        <br>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>