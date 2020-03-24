@extends('layouts.app')

@section('content')
{{--  @auth('instrutor')  --}}
    <center>
        <h3>Lista de atividades</h3>
        <div class="col-md-3"></div>           
        <div class="col-md-6">            
            <div class="panel">
                <div class="table-responsive">
                    <table class="table table-striped table-hover table-bordered" >
                        <thead>
                            <tr>
                                <th width="5">No</th>
                                <th>Exercicio</th>
                                <th>Instrutor</th>
                                <th>Aluno</th>
                                <th width="5">Ordem</th>
                                <th width="5">Carga</th>
                                <th width="5">Séries</th>
                                <th width="5">Repetições</th>
                                <th width="5">Comentários</th>
                                <th width="5">
                                    <center>
                                        <a href="{{ url('atividade/create') }}" class="btn btn-xs btn-success">Nova Atividade</a>
                                    </center>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($atividades as $key =>$atividade)
                                <tr>
                                    <td>{{ ($key+1) }}</td>
                                    <td>{{ $atividade->exercicio->nome }}</td>
                                    <td>{{ $atividade->instrutor->name }}</td>
                                    <td>{{ $atividade->aluno->name }}</td>
                                    <td>{{ $atividade->ordem }}º</td>
                                    <td>{{ $atividade->carga }}kg</td>
                                    <td>{{ $atividade->series }}</td>
                                    <td>{{ $atividade->repeticoes }}</td>
                                    <td>{{ $atividade->comentario }}</td>
                                    <td>
                                        <center>
                                            <a href="{{ URL('atividade/' . $atividade->id . '/edit') }}" class="btn btn-xs btn-info">Editar</a>
                                            <form action="{{ URL('atividade/' . $atividade->id) }}" method="POST">
                                                {{ csrf_field() }}
                                                {{ method_field('DELETE') }}
                                                <button type="submit" class="btn btn-xs btn-danger">Remover</button>
                                            </form>
                                        </center>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
            {{--  <a href="{{ URL('instrutor') }}" class="btn btn-sm btn-primary">Voltar</a>  --}}
            <a href="javascript:window.history.go(-1)" class="btn btn-sm btn-primary">Voltar</a>
        </div>
        <div class="col-md-3"></div> 
    </center>
{{--  @endauth  --}}
{{--  @guest
    @include('shared.filtroLogado')
@endguest  --}}

@endsection