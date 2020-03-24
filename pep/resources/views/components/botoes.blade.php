<h4 align="center">BOTOES TEMPORARIOS AUXILIARES</h4><br>
<div class="col-md-4">
    <p align="center"><a href="{{ url('admin/instrutor/lista') }}" class="btn btn-sm btn-primary">Gerenciar Instrutores</a></p>
    <p align="center"><a href="{{ url('aluno/lista') }}" class="btn btn-sm btn-primary">Gerenciar Alunos</a></p>
    <p align="center"><a href="{{ url('/grupoMuscular') }}" class="btn btn-sm btn-primary">Gerenciar grupos musculares</a></p>
    <p align="center"><a href="{{ url('/exercicio') }}" class="btn btn-sm btn-primary">Gerenciar Exercícios</a></p>
</div>

<div class="col-md-4">
    <p align="center"><a href="{{ url('/home') }}" class="btn btn-sm btn-primary">Portal Administrador</a></p>
    <p align="center"><a href="{{ url('instrutor/home') }}" class="btn btn-sm btn-primary">Portal Instrutor</a></p>
    <p align="center"><a href="{{ url('aluno/home') }}" class="btn btn-sm btn-primary">Portal Aluno</a></p>
</div>

<div class="col-md-4">
    <p align="center"><a href="{{ url('/login') }}" class="btn btn-sm btn-primary">Logar Administrador</a></p>
    <p align="center"><a href="{{ url('/instrutor') }}" class="btn btn-sm btn-primary">Logar Instrutor</a></p>
    <p align="center"><a href="{{ url('/aluno') }}" class="btn btn-sm btn-primary">Logar Aluno</a></p>
</div>
{{--  <br><br>
<a href="admin/logout" class="btn btn-sm btn-primary">Deslogar Admin</a>
<a href="instrutor/logout" class="btn btn-sm btn-primary">Deslogar Instrutor</a>
<a href="users/logout" class="btn btn-sm btn-primary">Deslogar Aluno</a>  --}}