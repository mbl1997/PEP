@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">

                <div class="panel-heading">
                    @if(isset($atividade))
                        <h4 align="center">Atividade <strong>{{ $atividade->exercicio->nome }}</strong></h4>
                    @endif
                </div>

                <div class="panel-body">
                    <form class="form-horizontal"
                        action="{{ URL('aluno/feedback') }}{{ isset($atividade) ? '/' . $atividade->id : '' }}"
                        method="POST">

                        @if(isset($atividade))
                            {{ method_field('PUT') }}
                        @endif
                        <fieldset>
                        {{ csrf_field() }}

                        <input id="treino_id" type="hidden" name="treino_id" value="{{ $atividade->treino_id }}">
                        <input id="exercicio_id" type="hidden" name="exercicio_id" value="{{ $atividade->exercicio_id }}">
                        <input id="instrutor_id" type="hidden" name="instrutor_id" value="{{ $atividade->instrutor_id }}">
                        <input id="aluno_id" type="hidden" name="aluno_id" value="{{ $atividade->aluno_id }}">
                        <input id="ordem" type="hidden" name="ordem" value="{{ $atividade->ordem }}">
                        <input id="carga" type="hidden" name="carga" value="{{ $atividade->carga }}">
                        <input id="series" type="hidden" name="carga" value="{{ $atividade->series }}">
                        <input id="repeticoes" type="hidden" name="repeticoes" value="{{ $atividade->repeticoes }}">
                        <input id="duracao" type="hidden" name="duracao" value="{{ $atividade->duracao }}">
                        <input id="comentario" type="hidden" name="comentario" value="{{ $atividade->comentario }}">
                        
                        @if(isset($atividade))
                            <div class="form-group">
                                <div class="col-md-3 col-md-offset-3">
                                    <strong>Instrutor: </strong><br>
                                    {{ $atividade->instrutor->name }} 
                                    {{ $atividade->instrutor->lastname }}
                                </div>
                                <div class="col-md-4">
                                    <strong>Aluno: </strong><br>
                                    {{ $atividade->aluno->name }} 
                                    {{ $atividade->aluno->lastname }}
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-6 col-md-offset-3">
                                    <strong>Exercicio: </strong>
                                    {{ $atividade->exercicio->nome }} 
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3 col-md-offset-3">
                                    <strong>Ordem: </strong>
                                    {{ $atividade->ordem }}
                                </div>
                                <div class="col-md-4">
                                    <strong>Séries: </strong>
                                    {{ $atividade->series }} 
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3 col-md-offset-3">
                                    <strong>Carga: </strong>
                                    {{ $atividade->carga }}
                                </div>
                                <div class="col-md-4">
                                    <strong>Repetições: </strong>
                                    {{ $atividade->repeticoes }} 
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3 col-md-offset-3">
                                    <strong>Duração: </strong>
                                    {{ $atividade->duracao }}
                                </div>
              
                            </div>
                        @endif
                       
                        <div class="form-group">
                            <label for="feedback" class="col-md-3 control-label">Feedback</label>
                            <div class="col-md-6">
                                <textarea class="form-control" rows="5" id="feedback" name="feedback" placeholder="Feedback..." >
@if(isset($atividade))
@if($atividade->feedback != null){{$atividade->feedback}}@endif
@endif</textarea> <br>
                            {{--  </div>
                        </div>  --}}

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                {{--  <a href="{{ URL('treino/' . $treino->id . '/edit') }}" class="btn btn-sm btn-primary">  --}}
                                <a href="javascript:window.history.go(-1)" class="btn btn-sm btn-primary">
                                    Voltar
                                </a>
                                <button type="submit" class="btn btn-sm btn-success">Salvar</button>
                            </div>
                        </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
