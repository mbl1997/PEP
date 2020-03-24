@extends('layouts.app')
@section('content')
    <center>
        <h3>Lista de Instrutores</h3>
        @if(Session::has('success'))
            <h3>{{ Session::get('success') }} </h3>            
        @else
            
        @endif
        <div class="row col-md-12">
            <div class="table-responsive">
                <table class="table table-hover table-bordered" >
                    <thead>
                        <tr>
                            <th width="5" >No</th>
                            <th>Nome</th>
                            <th>Nº Registro</th>
                            <th>Email</th>
                            <th>
                                <center>
                                <a href="{{ URL('instrutor/register') }}" class="btn btn-xs btn-success">Novo Instrutor</a>
                                </center>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($instrutors as $key =>$instrutor)
                            <tr>
                                <td>{{ ($key+1) }}</td>
                                <td>{{ $instrutor->name .' '. $instrutor->lastname }} </td>
                                <td>{{ $instrutor->registro }}</td>
                                <td>{{ $instrutor->email }}</td>
                                <td>
                                    <center>
                                        <a href="{{ URL('admin/instrutor/' . $instrutor->id . '/edit') }}" class="btn btn-xs btn-info">Editar</a>
                                        <form action="{{ URL('instrutor/' . $instrutor->id) }}" method="POST">
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
        <a href="{{URL('/home')}}" class="btn btn-sm btn-primary">Voltar</a>
    </center>
@endsection