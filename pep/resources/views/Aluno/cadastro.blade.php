@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">

                <div class="panel-heading">
                    @if(isset($atividade))
                        Editar Atividade 
                    @else
                        Adicionar Atividade 
                    @endif
                </div>

                <div class="panel-body">
                    <form class="form-horizontal" action="{{ URL('atividade') }}{{ isset($atividade) ? '/' . $atividade->id : '' }}" method="POST">
                        @if(isset($atividade))
                            {{ method_field('PUT') }}
                        @endif
                        {{ csrf_field() }}
                        <input id="treino_id" type="hidden" name="treino_id" value="{{ $treino->id }}">
                        <input id="instrutor_id" type="hidden" name="instrutor_id" value="{{Auth::user()->id}}">
                        <input id="aluno_id" type="hidden" name="aluno_id" value="{{ $treino->aluno_id }}">
                        
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
                        @endif

                        <div class="form-group{{ $errors->has('exercicio_id') ? ' has-error' : '' }}">
                            <label for="select" class="col-lg-3 control-label">Exercício</label>
                            <div class="col-md-6">
                                <select class="form-control" id="exercicio_id" name="exercicio_id" required="required">
                                    @if(isset($atividade))
                                        <option enable selected value="{{ $atividade->exercicio->id }}">
                                            @if($atividade->exercicio != null)
                                                {{$atividade->exercicio->nome}}
                                            @endif
                                        </option>
                                    @else
                                        <option disabled selected value="">Selecionar exercício...</option>
                                    @endif
                                    @foreach($exercicios as $exercicio)
                                        <option value="{{ $exercicio->id }}">{{ $exercicio->nome }}</option>
                                    @endforeach
                                </select>
                                @if ($errors->has('exercicio_id'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('exercicio_id') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                        
{{--  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  --}}
                        <div class="form-group">
                                <label class="col-lg-3 control-label">Ordem</label>
                                <div class="col-lg-2">
                                    <input type="number" name="ordem" placeholder="Ordem" class="form-control"
                                            value="{{ isset($atividade) ? $atividade->ordem : '' }}">
                                </div>

                                <label class="col-lg-2 control-label">Carga</label>
                                <div class="col-lg-2">
                                    <input type="number" name="carga" placeholder="Carga" class="form-control"
                                            value="{{ isset($atividade) ? $atividade->carga : '' }}">
                                </div>
                        </div>
                            
                        <div class="form-group">
                                <label class="col-lg-3 control-label">Séries</label>
                                <div class="col-lg-2">
                                    <input type="number" name="series" placeholder="Séries" class="form-control"
                                            value="{{ isset($atividade) ? $atividade->series : '' }}">
                                </div>

                                <label class="col-lg-2 control-label">Repetições</label>
                                <div class="col-lg-2">
                                    <input type="number" name="repeticoes" placeholder="Repetições" class="form-control"
                                            value="{{ isset($atividade) ? $atividade->repeticoes : '' }}">
                                </div>
                        </div>

                        <div class="form-group">
                                <label class="col-lg-3 control-label">Duração</label>
                                <div class="col-lg-2">
                                    <input type="number" name="duracao" placeholder="Duração" class="form-control"
                                            value="{{ isset($atividade) ? $atividade->duracao : '' }}">
                                </div>
                        </div>

                        <div class="form-group">
                            <label for="titulo" class="col-md-3 control-label">Comentário</label>
                            <div class="col-md-6">
                                <textarea class="form-control" rows="5" id="comentario" name="comentario" placeholder="Comentario..." >
@if(isset($atividade))
@if($atividade->comentario != null){{$atividade->comentario}}@endif
@endif</textarea>
                            </div>
                        </div>
{{--  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  --}}
                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                
                                {{--  <a href="{{ URL('treino/' . $treino->id . '/edit') }}" class="btn btn-sm btn-primary">  --}}
                                <a href="javascript:window.history.go(-1)" class="btn btn-sm btn-primary">
                                    Voltar
                                </a>
                                <button type="submit" class="btn btn-sm btn-success">Salvar</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
