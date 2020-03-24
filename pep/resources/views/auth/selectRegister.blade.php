@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading"><h4 align="center">Criar conta</h4></div>

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
                                <img src="../cadastro.png" class="img-responsive">
                            </div>
                            <div class="col-md-5" align="left">
                                <br>
                                {{--  <a href="{{ route('register') }}" class="btn btn-sm btn-primary">Administrador</a>  --}}
                                <a href="{{ url('instrutor/register') }}" class="btn btn-sm btn-primary">Instrutor</a><br><br>
                                <a href="{{ url('aluno/register') }}" class="btn btn-sm btn-primary">Aluno</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
