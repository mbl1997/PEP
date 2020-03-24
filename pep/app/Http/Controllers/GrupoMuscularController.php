<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\GrupoMuscular;
// use Auth;

class GrupoMuscularController extends Controller
{
    public function __construct()
    {
        // if(Auth::guard('instrutor')->check()){
            $this->middleware('auth:instrutor');
        // } elseif(Auth::guard('web')->check()) {
        //     $this->middleware('web');
        // }
    }
    
    public function index()
    {
        $grupomMscular ['grupoMuscular']= GrupoMuscular::all(); 
        return view('grupoMuscular.lista',$grupomMscular);
    }

    public function create(Request $request)
    {
        if($request == null){
            return view('grupoMuscular.cadastro');
        } else {
            $exercicio_id ['exercicio_id'] = $request->exercicio_id;
            return view('grupoMuscular.cadastro',$exercicio_id);
        }
    }

    public function store(Request $request)
    {
        $novo = new GrupoMuscular;
        $this->validate($request,[
            'nome'=>'required|unique:grupo_musculars',
        ]);
        $novo->nome = $request->nome;
        $novo->save();
        // return redirect('exercicio/create/');      
        // return redirect()->back();     
        return redirect()->back()->withInput(); 
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $grupoMuscular['grupoMuscular'] = GrupoMuscular::find($id);
        return view('grupoMuscular.cadastro',$grupoMuscular);
    }

    public function update(Request $request, $id)
    {
        $this->validate($request,[
            'nome'=>'required',
        ]);
        $grupoMuscular = [
            'nome' => $request->nome,
        ];
        $update = GrupoMuscular::find($id)->update($grupoMuscular);
        if($update)
            return redirect('grupoMuscular');
        else
            return redirect()->back()->withInput();
    }

    public function destroy($id)
    {
        $grupoMuscular = GrupoMuscular::find($id);
        if($grupoMuscular){
            $grupoMuscular->destroy($id);
            $msg = 'Grupo Muscular removido com Sucesso.';
        }
        else{
            $msg = 'Grupo Muscular não encontrado';
        }
        return redirect()
            ->back()
            ->withSucess($msg);
    }
}