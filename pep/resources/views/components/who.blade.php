<div align="center">
{{--  Checar se está logado como ADMINISTRADOR  --}}
@if(Auth::guard('web')->check()) 
    <h4 class="text-success">
    Olá, <strong>{{auth('web')->user()->name}} {{auth('web')->user()->lastname}}</strong>!
    Você está logado(a) como <strong>administrador(a)</strong>.
    </h4>
{{--  @else
    <p class="text-danger">
        Você está deslogado como <strong>ADMINISTRADOR</strong>
    </p>  --}}
@endif

{{--  Checar se está logado como INSTRUTOR  --}}
@if(Auth::guard('instrutor')->check()) 
    <h4 class="text-success">
        Olá, <strong>{{auth('instrutor')->user()->name}} {{auth('instrutor')->user()->lastname}}</strong>!
        Você está logado(a) como <strong>instrutor(a)</strong>.
    </h4>
{{--  @else
    <p class="text-danger">
        Você está deslogado como <strong>INSTRUTOR</strong>
    </p>  --}}
@endif

{{--  Checar se está logado como ALUNO  --}}
@if(Auth::guard('aluno')->check()) 
    <h4 class="text-success">
        Olá, <strong>{{auth('aluno')->user()->name}} {{auth('aluno')->user()->lastname}}</strong>!
        Você está logado(a) como <strong>aluno(a)</strong>.
    </h4>
{{--  @else
    <p class="text-danger">
        Você está deslogado como <strong>ALUNO</strong>
    </p>  --}}
@endif
</div>