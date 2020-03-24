<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Instrutor;
use App\Aluno;
use App\Treino;
use App\Exercicio;
use Auth;

class HomeController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        return view('auth.home');
    }
    
    public function listaInstrutor()
    {
        $data['instrutors'] = Instrutor::all();
        return view('instrutor.lista',$data);
    }

    public function editInstrutor($id)
    {
        $instrutor['instrutor'] = Instrutor::find($id);
        return view('instrutor.edit',$instrutor);
    }

    public function updateInstrutor(Request $request, $id)
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
}
