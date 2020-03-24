<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Instrutor;
use App\Aluno;
use App\Treino;
use App\Exercicio;
// use Auth;

class InstrutorController extends Controller
{

    public function __construct()
    {
        // if(Auth::guard('instrutor')->check()){
            $this->middleware('auth:instrutor');
        // } elseif(Auth::guard('web')->check()) {
            // $this->middleware('web');
        // }
    }

    public function index()
    {
        return view('instrutor.home');
    }
    
    public function gerenciaTreinos($id)
    {
        $treinos ['treinos'] = Instrutor::find($id)->treinos;
        return view('instrutor.treinos', $treinos);
    }

    public function create()
    {
        return view('instrutor.register');
    }
    
    public function edit($id)
    {
        $instrutor['instrutor'] = Instrutor::find($id);
        return view('instrutor.edit',$instrutor);
    }

    public function update(Request $request, $id)
    {
        
        if($request->has('password')){
            $instrutor = [
                'name' => $request->name,
                'lastname' => $request->lastname,
                'registro' => $request->registro,
                'email' => $request->email,
                'password' => $request->password,
            ];
        } else{
            $instrutor = [
                'name' => $request->name,
                'lastname' => $request->lastname,
                'registro' => $request->registro,
            ];
        }
        $update = Instrutor::find($id)->update($instrutor);
        if($update)
            return redirect('instrutor');
        else
            return redirect()->back()->withInput();
    }


    public function destroy($id)
    {
        $instrutor = Instrutor::find($id);
        if($instrutor){
            $instrutor->destroy($id);
            $msg = 'Instrutor removido com Sucesso.';
        }
        else{
            $msg = 'Instrutor não encontrado';
        }
        return redirect()
            ->back()
            ->withSucess($msg);        
    }

    public function alunos($id)
    {
        return $alunos ['alunos'] = Instrutor::find($id)->alunos;
        return view('instrutor/alunos',compact('alunos'));
    }
}
