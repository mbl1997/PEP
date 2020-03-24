@extends('layouts.app')

@section('content')
    <center>
        <h3>GERENCIAR TREINOS</h3> 
        <div class="col-md-3"></div>           
        <div class="col-md-6">
            <div class="panel">
                <div class="table-responsive">
                {{--  <h4> {{ Auth::user()->id }}</h4>  --}}
                    <table class="table table-striped table-hover table-bordered" >
                        <thead>
                            <tr>
                                <th width="5">ID</th>
                                <th>Instrutor</th>
                                <th>Titulo</th>
                                <th width="300">Data de criação</th>
                                <th width="5">
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($treinos as $treino)
                                <tr>
                                    <td>{{ $treino->id }}</td>
                                    <td>{{ $treino->instrutor->name }} {{ $treino->instrutor->lastname }}</td>
                                    <td>{{ $treino->titulo }}</td>
                                    <td>
                                        {{$treino->created_at->day}}/{{$treino->created_at->month}}/{{$treino->created_at->year}}
                                    </td>
                                    <td>
                                        <center>
                                            <a href="{{ URL('aluno/atividades/' . $treino->id) }}" class="btn btn-xs btn-info">Ver atividades</a>
                                        </center>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
            {{--  <a href="{{ URL('instrutor') }}" class="btn btn-sm btn-primary">Voltar</a>          --}}
            <a href="javascript:window.history.go(-1)" class="btn btn-sm btn-primary">Voltar</a>        
        </div>           
        <div class="col-md-3"></div>  
    </center>
@endsection
