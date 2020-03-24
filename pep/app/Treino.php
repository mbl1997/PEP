<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Atividade;
use App\Instrutor;
use App\Aluno;

class Treino extends Model
{
    protected $fillable = [
        'instrutor_id', 'aluno_id', 'titulo', 'comentario',
    ];
    
    public function instrutor()
    {
        return $this->belongsTo(Instrutor::Class);
    }
    
    public function aluno()
    {
        return $this->belongsTo(Aluno::Class);
    }   
    
    public function atividades()
    {
        return $this->hasMany(Atividade::Class);
    }
}
