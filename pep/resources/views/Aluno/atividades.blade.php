@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading"><h4 align="center">Atividades do Treino: <strong>{{ $treino->titulo }}</strong></h4></div>

                <div class="panel-body">
                    <form
                        class="form-horizontal"
                        action="{{ URL('treino') }}{{ isset($treino) ? '/' . $treino->id : '' }}" 
                        method="POST">

                        @if(isset($treino))
                            {{ method_field('PUT') }}
                        @endif
                        {{ csrf_field() }}

{{--  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--}}
                    <div class="panel-group">
                        @if(isset($treino))
                            @if(isset($atividades))
                                @foreach($atividades as $atividade)
                                    <div class="panel panel-info">
                                        
                                        <div class="panel-heading">
                                            <div class="col-md-4">
                                                <h3><strong>{{$atividade->exercicio->nome}}</strong></h3>
                                            </div>
                                            <div class="col-md-4">
                                                Treino: <strong>{{$atividade->treino->titulo}}</strong> <br>
                                            
                                                Instrutor: <strong>{{$atividade->instrutor->name}} {{$atividade->instrutor->lastname}}</strong> <br>
                                            
                                                Aluno: <strong>{{$atividade->aluno->name}} {{$atividade->aluno->lastname}}</strong> <br>
                                            </div>
                                            <div class="col-md-4">
                                                Data de criação: 
                                                <strong>
                                                    {{$atividade->created_at->day}}/{{$atividade->created_at->month}}/{{$atividade->created_at->year}}
                                                </strong> <br>

                                                <a href="{{ URL('aluno/feedback/' . $atividade->id ) }}" class="btn btn-xs btn-success btn-block">Realizar Feedback</a>
                                            </div>
                                            &nbsp;
                                        </div>   


                                        <div class="panel-body">
                                            @if($atividade->exercicio->imagem != null && $atividade->exercicio->descricao != null)
                                                <div class="col-sm-5">
                                                    <h4 class="card-title">Descrição do Exercício:</h4> 
                                                        <div class="text-justify">{{$atividade->exercicio->descricao}}</div> <br>
                                                </div>

                                                <div class="col-sm-4">
                                                    <img src="{{ asset('storage/' . $atividade->exercicio->imagem) }}" width=200><br>
                                                </div>
                                            @elseif($atividade->exercicio->descricao != null)
                                                <div class="col-sm-9">
                                                    <h4 class="card-title">Descrição do Exercício:</h4> 
                                                        <div class="text-justify">{{$atividade->comentario}}</div> <br>
                                                </div>
                                            @elseif($atividade->exercicio->imagem != null)
                                                <div class="col-sm-5">
                                                    <h4 class="card-title">Descrição do Exercício:</h4> 
                                                        Não disponível <br>
                                                </div>
                                                <div class="col-sm-4">
                                                    <img src="{{ asset('storage/' . $atividade->exercicio->imagem) }}" width=200><br>
                                                </div>
                                            @else
                                                @if($atividade->comentario != null)
                                                    <div class="col-sm-9">
                                                        <h4 class="card-title">Comentário do professor:</h4>
                                                        <div class="text-justify">{{$atividade->comentario}}</div>
                                                    </div>
                                                @endif
                                            @endif

                                            <div class="col-sm-3">
                                                <h4 class="card-title">Atividade:</h4>  
                                                Ordem: {{$atividade->ordem}}º <br>
                                                Carga: {{$atividade->carga}}Kg <br>
                                                Series: {{$atividade->series}} <br>
                                                Repetições: {{$atividade->repeticoes}} <br>
                                                Duração: {{$atividade->duracao}} seg.
                                            </div>
                                            @if($atividade->comentario != null && ($atividade->exercicio->imagem != null || $atividade->exercicio->descricao != null))
                                                <div class="col-sm-12">
                                                     <h4 class="card-title">Comentario do instrutor: </h4>
                                                     <div class="text-justify">{{$atividade->comentario}}</div>
                                                </div>
                                            @endif
                                            @if($atividade->feedback != null)
                                                <div class="col-sm-12">
                                                     <h4 class="card-title">Feedback do aluno:</h4>
                                                     <div class="text-justify">{{$atividade->feedback}}</div>
                                                </div>
                                            @endif
                                        </div>
                                    </div> <br>  
                                @endforeach
                            @else
                                <h4 align='center'>Nenhuma Atividade Cadastrada </h4>
                            @endif
                        @else
                            @if(isset($atividades))
                                <h4 align='center'>Atividade Cadastrada </h4>
                                {{--  {{$atividades}}  --}}
                            @else
                                <h4 align='center'>Nenhuma Atividade Cadastrada </h4>
                            @endif
                        @endif
                    </div>
{{--  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--}}
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
