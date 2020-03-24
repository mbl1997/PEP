@extends('layouts.app')
@section('content')
    <center>
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <h3>Lista de Alunos</h3>
            @if(Session::has('success'))
                <h3>{{ Session::get('success') }} </h3>            
            @else
                
            @endif
            <div class="table-responsive">
                <table class="table table-hover table-bordered" >
                    <thead>
                        <tr>
                            <th width="5" >No</th>
                            <th>Nome</th>
                            <th>Email</th>
                            <th>
                                <center>
                                <a href="{{ URL('aluno/register') }}" class="btn btn-xs btn-success">Novo Aluno</a>
                                </center>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($alunos as $key =>$aluno)
                            <tr>
                                <td>{{ ($key+1) }}</td>
                                <td>{{ $aluno->name .' '. $aluno->lastname }} </td>
                                <td>{{ $aluno->email }}</td>
                                <td>
                                    <center>
                                        <a href="{{ URL('aluno/' . $aluno->id . '/edit') }}" class="btn btn-xs btn-info">Editar</a>
                                        <form action="{{ URL('aluno/' . $aluno->id) }}" method="POST">
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
            {{--  <a href="home" class="btn btn-sm btn-primary">Voltar</a>  --}}
            <a href="javascript:window.history.go(-1)" class="btn btn-sm btn-primary">Voltar</a>
        </div>
        <div class="col-md-3"></div>
    </center>
@endsection