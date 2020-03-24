@extends('layouts.app')

@section('content')
{{--  @auth  --}}
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Cadastro de Grupo Muscular</div>

                <div class="panel-body">
                    <form class="form-horizontal" action="{{ URL('grupoMuscular') }}{{ isset($grupoMuscular) ? '/' . $grupoMuscular->id : '' }}" method="POST">
                        {{ csrf_field() }}
                        @if(isset($grupoMuscular))
                            {{ method_field('PUT') }}
                        @endif
                        
                        @if(isset($exercicio_id))

                            <h1>TESTANDO REQUEST 123</h1>
                            {{--  <input type="text" id="request" name="request" placeholder="request" class="form-control"
                                value="{{ isset($request) ? $request->id : '' }}">  --}}
                        @endif
                            

                        <div class="form-group{{ $errors->has('nome') ? ' has-error' : '' }}">
                            <label for="select" class="col-md-3 control-label">Grupo Muscular</label>
                            <div class="col-md-6">
                                <input type="text" name="nome" placeholder="Grupo Muscular" class="form-control"
                                value="{{ isset($grupoMuscular) ? $grupoMuscular->nome : '' }}">

                                @if ($errors->has('nome'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('nome') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                {{--  <a href="{{ URL('/exercicio/create') }}{{ isset($id) ? '/' . $id : ''}}" class="btn btn-sm btn-primary">Cancelar</a>  --}}
                                <a href="javascript:window.history.go(-1)" class="btn btn-sm btn-primary">Voltar</a>

                                {{--  <a href="{{ URL('grupoMuscular/create') }}{{ isset($exercicio) ? '/' . $exercicio->id : ''}}"></a>  --}}
                                <button type="submit" class="btn btn-sm btn-success">Salvar</button>
                                {{--  <input type="hidden" value="{{ csrf_token() }}" name="_token">  --}}
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
{{--  @endauth  --}}

{{--  @guest
    @include('shared.filtroLogado')
@endguest  --}}
@endsection
{{--  

Tabela GrupoMuscular(Ex.: Membro peritoral)
	NomeDoGrupoMuscular
	Tipo(ABCDE,X)  
    
--}}
