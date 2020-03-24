@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Portal do Instrutor</div>

                <div class="panel-body">
                @if (session('status'))
                    <div class="alert alert-success">
                        {{ session('status') }}
                    </div>
                @endif
                @if(Auth::check()) 
                    @component('components.who')
                    @endcomponent
                @endif
                <div align="center">
                        <div class="col-md-3" align="right">
                        </div>
                        <div class="col-md-4" align="right">
                            <br>
                            <img src="../instrutor.gif" class="img-responsive">
                        </div>
                        <div class="col-md-5" align="left">
                            <br><br><br>
                            <p><a href="{{ url('treino/lista/' . Auth::user()->id) }}" class="btn btn-sm btn-primary">Gerenciar Treinos</a></p>
                            <p><a href="{{ url('atividade/lista/' . Auth::user()->id) }}" class="btn btn-sm btn-primary">Gerenciar Atividades</a></p>
                            <p><a href="{{ url('/grupoMuscular') }}" class="btn btn-sm btn-primary">Gerenciar grupos musculares</a></p>
                            <p><a href="{{ url('/exercicio') }}" class="btn btn-sm btn-primary">Gerenciar Exercícios</a></p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
