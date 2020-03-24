<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use App\Notifications\InstrutorResetPasswordNotification;
use App\Aluno;
use App\Treino;
use App\Atividade;

class Instrutor extends Authenticatable
{
    use Notifiable;

    protected $fillable = [
        'name', 'lastname', 'registro', 'email', 'password',
    ];

    protected $hidden = [
        'password', 'remember_token',
    ];

    public function sendPasswordResetNotification($token)
    {
        $this->notify(new InstrutorResetPasswordNotification($token));
    }

    public function alunos()
    {
        return $this->hasMany(Aluno::Class);
    }

    public function treinos()
    {
        return $this->hasMany(Treino::Class);
    }    

    public function atividades()
    {
        return $this->hasMany(Atividade::Class);
    }
}