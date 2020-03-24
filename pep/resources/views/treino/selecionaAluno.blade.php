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
                        action="{{ URL('treino/indicarTreino') }}"
                        method="POST">

                        {{ csrf_field() }}

                        <input id="instrutor_id" type="hidden" class="form-control" name="instrutor_id" value="{{Auth::user()->id}}">

                        <input id="treino_id" type="hidden" class="form-control" name="treino_id" value="{{$treino->id}}">

                        <div class="form-group{{ $errors->has('aluno_id') ? ' has-error' : '' }}">
                            <label for="select" class="col-md-3 control-label">Aluno</label>
                            <div class="col-md-6">
                                <select class="form-control" id="aluno_id" name="aluno_id" required>
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
                            <div class="col-md-6 col-md-offset-3">
                                <button type="submit" class="btn btn-sm btn-success btn-block">Indicar treino</button>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-3">
                                {{--  <a href="{{ url('treino/lista/' . Auth::user()->id) }}" class="btn btn-sm btn-primary btn-block">  --}}
                                <a href="javascript:window.history.go(-1)" class="btn btn-sm btn-primary btn-block">
                                    Voltar
                                </a>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>

@endsection
