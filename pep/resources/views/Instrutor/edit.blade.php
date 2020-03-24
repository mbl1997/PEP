@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Editar Instrutor</div>

                <div class="panel-body">
                    <form class="form-horizontal" action="{{ URL('instrutor') }}{{ isset($instrutor) ? '/' . $instrutor->id : '' }}" method="POST">
                    @if(isset($instrutor))
                        {{ method_field('PUT') }}
                    @endif
                    <fieldset>
                        {{ csrf_field() }}
                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                            <label for="name" class="col-md-4 control-label">Nome</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control" name="name" placeholder="Nome" value="{{ isset($instrutor) ? $instrutor->name : '' }}" required autofocus>

                                @if ($errors->has('name'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('lastname') ? ' has-error' : '' }}">
                            <label for="lastname" class="col-md-4 control-label">Sobrenome</label>

                            <div class="col-md-6">
                                <input id="lastname"type="text" class="form-control" name="lastname" placeholder="Sobrenome" value="{{ isset($instrutor) ? $instrutor->lastname : '' }}" required autofocus>

                                @if ($errors->has('lastname'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('lastname') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('registro') ? ' has-error' : '' }}">
                            <label for="registro" class="col-md-4 control-label">Nº Registro</label>

                            <div class="col-md-6">
                                <input id="registro" type="text" class="form-control" name="registro" placeholder="Nº Registro" value="{{ isset($instrutor) ? $instrutor->registro : '' }}" required autofocus>

                                @if ($errors->has('registro'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('registro') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <a href="javascript:window.history.go(-1)" class="btn btn-sm btn-primary">Voltar</a>
                                <button type="submit" class="btn btn-sm btn-success">
                                    Atualizar
                                </button>
                            </div>
                        </div>
                    <fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
