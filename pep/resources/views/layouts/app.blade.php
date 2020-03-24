@extends('layouts.layout')
@section('conteudo')
<div id="app">
    <div>
    <nav class="navbar navbar-default navbar-static-top">
        <div class="container">
            <div class="navbar-header">

                <!-- Collapsed Hamburger -->
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navbar-collapse">
                    <span class="sr-only">Toggle Navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <!-- Branding Image -->
                <a class="navbar-brand" href="{{ url('/') }}">
                    {{--  <img src="logo.png" height="35">  --}}
                    {{ config('app.name', 'PEP') }}
                </a>
            </div>

            <div class="collapse navbar-collapse" id="app-navbar-collapse">
                <!-- Left Side Of Navbar -->
                <ul class="nav navbar-nav">
                    &nbsp;
                </ul>

                <!-- Right Side Of Navbar -->
                <ul class="nav navbar-nav navbar-right">
                    <!-- Authentication Links -->

                    @auth('web')
                        <li><a href="{{ url('/home') }}">Portal Administrador</a></li>
                    @endauth

                    @auth('instrutor')
                        <li><a href="{{ url('instrutor/home') }}">Portal Instrutor</a></li>
                    @endauth

                    @auth('aluno')
                        <li><a href="{{ url('aluno/home') }}">Portal Aluno</a></li>
                    @endauth

                    @guest
                        <li><a href="{{ url('/selectLogin') }}"></span> Entrar</a></li>
                        <li><a href="{{ url('/selectRegister') }}"></span> Criar conta</a></li>
                    @else
                            @component('components.logado')
                            @endcomponent

                    @endguest
                </ul>
            </div>
        </div>
    </nav>
    </div>
    <div>
        @yield('content')
    </div>
</div>
@endsection