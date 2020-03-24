<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Treino;
use App\GrupoMuscular;
use App\Atividade;

class Exercicio extends Model
{
    protected $fillable = [
        'nome', 'descricao', 'grupo_muscular_id', 'imagem',
    ];

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
