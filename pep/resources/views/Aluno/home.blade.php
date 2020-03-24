@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Portal do Aluno</div>
                <div class="panel-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif
                    @if(Auth::check()) 
                    @component('components.who')
                    @endcomponent
                    <div align="center">
                        <div class="col-md-2" align="right">
                        </div>
                        <div class="col-md-5" align="right">
                            <img src="../aluno.jpg" class="img-responsive">
                        </div>
                        <div class="col-md-5" align="left">
                            <br><br><br><br>
                            <a href="{{ url('aluno')}}{{'/' . Auth::user()->id . '/addinstrutor' }}" class="btn btn-sm btn-primary">Selecionar Instrutor</a> <br><br><br>
                            <a href="{{ url('aluno/treinos/' . Auth::user()->id ) }}" class="btn btn-sm btn-primary">Meus treinos</a>  
                        </div>
                    </div>
                    @endif 

                    {{--  @component('components.botoes')
                    @endcomponent
                    <br>  --}}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
