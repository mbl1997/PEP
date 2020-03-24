@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Registrar seu instrutor</div>

                <div class="panel-body">
                    <form class="form-horizontal" action="{{ URL('aluno/registerInstrutor') }}{{ isset($aluno) ? '/' . $aluno->id : '' }}" method="POST">
                    @if(isset($aluno))
                        {{ method_field('PUT') }}
                    @endif
                        {{ csrf_field() }}

                        <div class="form-group">
                            <label for="select" class="col-lg-4 control-label">Instrutor</label>
                            <div class="col-lg-6">
                                <select class="form-control" id="instrutor_id" name="instrutor_id" required="required">
                                    @if(isset($aluno))
                                        <option enable selected value="{{ $aluno->instrutor_id }}">
                                            @if($aluno->instrutor != null)
                                                {{$aluno->instrutor->name}} {{$aluno->instrutor->lastname}}
                                            @endif   
                                        </option>
                                    @else
                                        <option disabled selected>Selecionar instrutor...</option>
                                    @endif
                                    @foreach($instrutores as $instrutor)
                                        <option value="{{$instrutor->id}}">{{ $instrutor->id . ' ' . $instrutor->name . ' ' . $instrutor->lastname }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                {{--  <a href="{{ url('aluno/home') }}" class="btn btn-sm btn-primary">Voltar</a>  --}}
                                <a href="javascript:window.history.go(-1)" class="btn btn-sm btn-primary">Voltar</a>
                                <button type="submit" class="btn btn-sm btn-success">
                                    Adicionar Instrutor
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
