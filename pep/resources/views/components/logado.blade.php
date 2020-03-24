<li class="dropdown">
    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
        {{ Auth::user()->email }} <span class="caret"></span>
    </a>

    <ul class="dropdown-menu" role="menu">
        @auth('web')
            <li><a href="{{ url('/home') }}">Portal Administrador</a></li>
        @endauth

        @auth('instrutor')
            <li><a href="{{ url('instrutor/home') }}">Portal Instrutor</a></li>
        @endauth

        @auth('aluno')
            <li><a href="{{ url('aluno/home') }}">Portal Aluno</a></li>
        @endauth
        
        <li>
            <a href="{{ route('logout') }}"
                onclick="event.preventDefault();
                            document.getElementById('logout-form').submit();">
                Sair
            </a>

            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                {{ csrf_field() }}
            </form>
        </li>
    </ul>
</li>