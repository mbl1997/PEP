<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Exercicio;
use App\Instrutor;
use App\Aluno;
use App\Treino;

class Atividade extends Model
{
    protected $fillable = [
        'treino_id', 'exercicio_id', 'instrutor_id', 'aluno_id', 'ordem', 'carga', 'series', 'repeticoes', 'duracao', 'comentario', 'feedback',
    ];

    public function exercicio()
    {
        return $this->belongsTo(Exercicio::Class);
    }

    public function instrutor()
    {
        return $this->belongsTo(Instrutor::Class);
    }

    public function aluno()
    {
        return $this->belongsTo(Aluno::Class);
    }

    public function treino()
    {
        return $this->belongsTo(Treino::Class);
    }
}
