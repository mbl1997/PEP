<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Exercicio;

class GrupoMuscular extends Model
{
    protected $fillable = [
        'nome',
    ];

    public function exercicios()
    {
        return $this->hasMany(Exercicio::Class);
    }
}
