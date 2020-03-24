@extends('layouts.app')

@section('content')
<div class="container">
<div class="row">
<div class="col-md-8 col-md-offset-2">
<div class="panel panel-default">
    <div class="panel-heading">Cadastro de exercício</div>
    <div class="panel-body">
    <form class="form-horizontal" enctype="multipart/form-data"
     action="{{ URL('exercicio') }}{{ isset($exercicio) ? '/' . $exercicio->id : '' }}"
     method="POST">
            @if(isset($exercicio))
                {{ method_field('PUT') }}
            @endif
        <fieldset>
            {{ csrf_field() }}
            <input type="hidden" name="_token" value="{{ csrf_token() }}">

            <div class="form-group{{ $errors->has('nome') ? ' has-error' : '' }}">
                <label class="col-lg-4 control-label">Nome</label>
                <div class="col-md-6">
                    <input type="text" name="nome" placeholder="Nome" class="form-control"
                            value="{{ isset($exercicio) ? $exercicio->nome : '' }}">
                    @if ($errors->has('nome'))
                        <span class="help-block">
                            <strong>{{ $errors->first('nome') }}</strong>
                        </span>
                    @endif
                </div>
            </div>

            <div class="form-group">
                <label for="titulo" class="col-md-4 control-label">Descrição</label>
                <div class="col-md-6">
                    <textarea class="form-control" rows="5" id="descricao" name="descricao" placeholder="Descrição..." >
@if(isset($exercicio))
@if($exercicio->descricao != null){{$exercicio->descricao}}@endif
@endif</textarea>
                </div>
            </div>

            <div class="form-group{{ $errors->has('grupo_muscular_id') ? ' has-error' : '' }}">
                <label for="select" class="col-lg-4 control-label">Grupo Muscular</label>
                <div class="col-md-6">
                    <select class="form-control" id="grupo_muscular_id" name="grupo_muscular_id" required="required">
                        @if(isset($exercicio))
                            <option enable selected value="{{ $exercicio->grupo_muscular_id }}">
                                @if($exercicio->grupoMuscular != null)
                                    {{$exercicio->grupoMuscular->nome}}
                                @endif   
                            </option>
                        @else
                            <option disabled selected>Selecionar grupoMuscular...</option>
                        @endif
                        @foreach($grupoMusculars as $musc)
                            <option value="{{ $musc->id }}">{{ $musc->nome }}</option>
                        @endforeach
                    </select>
                    @if ($errors->has('grupo_muscular_id'))
                        <span class="help-block">
                            <strong>{{ $errors->first('grupo_muscular_id') }}</strong>
                        </span>
                    @endif
                </div>
            </div>

            <div class="form-group{{ $errors->has('imagem') ? ' has-error' : '' }}">
                <label class="col-lg-4 control-label">Upload de imagem</label>
                <div class="col-md-6">
                    <input type="file" name="imagem"
                            value="{{ isset($exercicio) ? $exercicio->imagem : '' }}">
                    @if ($errors->has('imagem'))
                        <span class="help-block">
                            <strong>{{ $errors->first('imagem') }}</strong>
                        </span>
                    @endif
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-6 col-md-offset-4">
                    <button type="submit" class="btn btn-sm  btn-success btn-block">Salvar Exercício</button>
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-6 col-md-offset-4">
                    <a href="javascript:window.history.go(-1)" class="btn btn-sm  btn-primary">Voltar</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="{{ URL('grupoMuscular/create') }}" type="submit" class="btn btn-sm btn-default">Novo Grupo Muscular</a>
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