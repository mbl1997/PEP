@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Editar Aluno</div>

                <div class="panel-body">
                    <form class="form-horizontal" action="{{ URL('aluno') }}{{ isset($aluno) ? '/' . $aluno->id : '' }}" method="POST">
                    @if(isset($aluno))
                        {{ method_field('PUT') }}
                    @endif
                    <fieldset>
                        {{ csrf_field() }}
                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                            <label for="name" class="col-md-4 control-label">Nome</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control" name="name" placeholder="Nome" value="{{ isset($aluno) ? $aluno->name : '' }}" required autofocus>

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
                                <input id="lastname"type="text" class="form-control" name="lastname" placeholder="Sobrenome" value="{{ isset($aluno) ? $aluno->lastname : '' }}" required autofocus>

                                @if ($errors->has('lastname'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('lastname') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <a href="javascript:window.history.go(-1)" class="btn btn-sm btn-primary">
                                    Voltar
                                </a>
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
