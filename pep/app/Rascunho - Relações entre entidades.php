<?php 
use App\Instrutor;
use App\Treino;
class Aluno
{
    public function instrutor()
    {
        return $this->belongsTo(Instrutor::Class);
    }
    
    public function treinos()
    {
        return $this->hasMany(Treino::Class);
    }
}

use App\Treino;
use App\Aluno;
class Instrutor
{
    public function alunos()
    {
        return $this->hasMany(Aluno::Class);
    }
    
    public function treinos()
    {
        return $this->hasMany(Treino::Class);
    }
}

use App\Aluno;
use App\Instrutor;
use App\Exercicio;
class Treino
{
    public function instrutor()
    {
        return $this->belongsTo(Instrutor::Class);
    }

    public function aluno()
    {
        return $this->belongsTo(Aluno::Class);
    }
    
    public function exercicios()
    {
        return $this->belongsToMany(Exercicio::Class);
    }
}

use App\Treino;
use App\Atividade;
use App\GrupoMuscular;
class Exercicio
{
    public function treinos()
    {
        return $this->belongsToMany(Treino::Class);
    }

    public function grupoMuscular()
    {
        return $this->belongsTo(GrupoMuscular::Class);
    }
    
    public function atividades()
    {
        return $this->hasMany(Atividade::Class);
    }
}

use App\Exercicio;
class Atividade
{
    public function exercicio()
    {
        return $this->belongsTo(Exercicio::Class);
    }
}

use App\Exercicio;
class GrupoMuscular
{
    public function exercicios()
    {
        return $this->hasMany(Exercicio::Class);
    }
}



