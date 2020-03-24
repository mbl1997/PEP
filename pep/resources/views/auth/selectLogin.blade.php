@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading"><h4 align="center">Acesso</h4></div>

                <div class="panel-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif
                    <div align="center">
                            <div class="col-md-3" align="right">
                            </div>
                            <div class="col-md-4" align="right">
                                <img src="../login.png" class="img-responsive">
                            </div>
                            <div class="col-md-5" align="left">
                                <br><br>
                                <a href="login" class="btn btn-sm btn-primary">Administrador</a> <br><br>
                                <a href="instrutor" class="btn btn-sm btn-primary">Instrutor</a> <br><br>
                                <a href="aluno" class="btn btn-sm btn-primary">Aluno</a>
                            </div>
                        </div>

                    </div>

                    {{--  Você está logado!  --}}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
