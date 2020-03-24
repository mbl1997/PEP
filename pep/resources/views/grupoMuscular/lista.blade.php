@extends('layouts.app')

@section('content')
    <center>
        <h3>Lista de Grupo Musculares</h3> 
        <div class="col-md-4"></div>           
        <div class="col-md-4">
            <div class="panel">
                <div class="table-responsive">
                    <table class="table table-striped table-hover table-bordered" >
                        <thead>
                            <tr>
                                <th width="5">No</th>
                                <th>Grupo Muscular</th>
                                <th width="5">
                                    <center>
                                        <a href="grupoMuscular/create" class="btn btn-xs btn-success">Novo Grupo Muscular</a>
                                    </center>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($grupoMuscular as $key =>$grupoMusc)
                                <tr>
                                    <td>{{ ($key+1) }}</td>
                                    <td>{{ $grupoMusc->nome }}</td>
                                    <td>
                                        <center>
                                            <a href="{{ URL('grupoMuscular/' . $grupoMusc->id . '/edit') }}" class="btn btn-xs btn-info">Editar</a>

                                            <form action="{{ URL('grupoMuscular/' . $grupoMusc->id) }}" method="POST">
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
            {{--  <a href="{{ URL('instrutor') }}" class="btn btn-sm btn-primary">Voltar</a>          --}}
            <a href="javascript:window.history.go(-1)" class="btn btn-sm btn-primary">Voltar</a>        
        </div>           
        <div class="col-md-4"></div>  
    </center>
@endsection