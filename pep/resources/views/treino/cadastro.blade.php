@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Cadastro Treino</div>

                <div class="panel-body">
                    <form
                        class="form-horizontal"
                        action="{{ URL('treino') }}{{ isset($treino) ? '/' . $treino->id : '' }}" 
                        method="POST">

                        @if(isset($treino))
                            {{ method_field('PUT') }}
                            <h4 align='center'>Alteração de treino</h4>
                        @else
                            <h4 align='center'>Novo treino</h4>
                        @endif
                        {{ csrf_field() }}

                        <input id="instrutor_id" type="hidden" class="form-control" name="instrutor_id" value="{{Auth::user()->id}}">

                        <div class="form-group{{ $errors->has('aluno_id') ? ' has-error' : '' }}">
                            <label for="select" class="col-md-3 control-label">Aluno</label>
                            <div class="col-md-6">
                                <select class="form-control" id="aluno_id" name="aluno_id" required>
                                    @if(isset($treino))
                                        <option enable selected value="{{ $treino->aluno_id }}">
                                            @if($treino->aluno != null)
                                                {{$treino->aluno->name}} {{$treino->aluno->lastname}}
                                            @endif   
                                        </option>
                                    @else
                                        <option disabled selected value="">Selecionar aluno...</option>
                                    @endif
                                    @foreach($alunos as $aluno)
                                        @if($aluno->instrutor_id == Auth::user()->id)
                                            <option value="{{ $aluno->id }}">{{ $aluno->name }}</option>
                                        @endif
                                    @endforeach
                                </select>
                                @if ($errors->has('aluno_id'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('aluno_id') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="titulo" class="col-md-3 control-label">Título</label>
                            <div class="col-md-6">
                                <input id="titulo" type="text" class="form-control" name="titulo" placeholder="Título" value="{{ isset($treino) ? $treino->titulo : '' }}" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="titulo" class="col-md-3 control-label">Comentário</label>
                            <div class="col-md-6">
                                <textarea class="form-control" rows="5" id="comentario" name="comentario" placeholder="Comentario..." >
@if(isset($treino))
@if($treino->comentario != null){{$treino->comentario}}@endif
@endif</textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-3">
                                <button type="submit" class="btn btn-sm btn-success btn-block">Adicionar Atividade</button>
                            </div>
                        </div>

                        {{--  <div class="form-group">
                            <div class="col-md-6 col-md-offset-3">
                                <button onclick="{{ redirect('treino/' . $treino->id . '/edit')}}" type="submit" class="btn btn-sm btn-info btn-block">Salvar Treino</button>
                            </div>
                        </div>  --}}

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-3">
                                {{--  <a href="{{ url('treino/lista/' . Auth::user()->id) }}" class="btn btn-sm btn-primary btn-block">  --}}
                                <a href="javascript:window.history.go(-1)" class="btn btn-sm btn-primary btn-block">
                                    Voltar
                                </a>
                            </div>
                        </div>
                    </form>
{{--  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--}}
                    <div class="panel-group">
                        @if(isset($treino))
                            @if(isset($atividades))
                            <h2 align="center">Atividades</h2>
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
                                                <form action="{{ URL('atividade/' . $atividade->id) }}" method="POST">
                                                    <a href="{{ URL('atividade/' . $atividade->id . '/edit') }}" class="btn btn-xs btn-info">Editar</a>
                                                    {{ csrf_field() }}
                                                    {{ method_field('DELETE') }}
                                                    <button type="submit" class="btn btn-xs btn-danger">Remover</button>
                                                </form>
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
                                                Repetições: {{$atividade->repeticoes}} vezes<br>
                                                Duração: {{$atividade->duracao}} seg.
                                            </div>
                                            @if($atividade->comentario != null && ($atividade->exercicio->imagem != null || $atividade->exercicio->descricao != null))
                                                <div class="col-sm-12">
                                                     <h4 class="card-title">Comentario do professor:</h4>
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
