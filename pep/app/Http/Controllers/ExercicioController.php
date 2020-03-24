<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Exercicio;
use App\GrupoMuscular;
use App\Atividade;
// use Auth;
use \Input as Input;

class ExercicioController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:instrutor');
    }

    public function index()
    {
        $exercicios = Exercicio::all();
        $grupoMusculars = GrupoMuscular::all(); 
        $atividades = Atividade::all(); 
        // $imgUrl = Storage::url('teste.png');
        return view('exercicio.lista', compact('exercicios','grupoMusculars','atividades'));
    }

    public function create()
    {
        $grupoMusculars ['grupoMusculars'] = GrupoMuscular::all();
        $atividades ['atividades'] = Atividade::all();
        return view('exercicio.cadastro',$grupoMusculars,$atividades);
    }

    public function store(Request $request)
    {    
        $exercicio = new Exercicio;
        $this->validate($request,[
            'nome'=>'required|unique:exercicios',
            'grupo_muscular_id'=>'required',
        ]);
        $exercicio->nome = $request->nome;
        $exercicio->descricao = $request->descricao;
        $exercicio->grupo_muscular_id = $request->grupo_muscular_id;
        
		if($request->hasFile('imagem')){
            // $request->file('imagem');
            // $request->imagem->store('public');
            // Storage::putFile('public',$request->file('imagem'));
            $fileName = $request->imagem->getClientOriginalName();
            $request->imagem->storeAs('public',$fileName);
            $exercicio->imagem = $fileName;
            
            // Para criar o arquivo!!!!!!
            // $raw = Storage::get('teste.png');
            // Storage::put('public',$raw);//retorna boolean
            
            // Para deletar o arquivo!!!!!!
            // Storage::delete('public/teste.png');//retorna boolean

            // $exercicio->imagem = $request->imagem;
        }

        $exercicio->save();
        return redirect('exercicio');
        // return redirect()->back()->withInput();
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $grupoMusculars ['grupoMusculars'] = GrupoMuscular::all();
        $atividades ['atividades'] = Atividade::all();
        $exercicio['exercicio'] = Exercicio::find($id);
        return view('exercicio.cadastro',$exercicio,$grupoMusculars,$atividades);
    }

    public function update(Request $request, $id)
    {
        $exercicio = [
            'nome' => $request->nome,
            'descricao' => $request->descricao,
            'grupo_muscular_id' => $request->grupo_muscular_id,
        ];

        if($request->hasFile('imagem')){
            $fileName = $request->imagem->getClientOriginalName();
            // $exercicio->imagem = $fileName;
            $exercicio = [
                'imagem' => $fileName,
            ];
            $request->imagem->storeAs('public',$fileName);
        }
        $update = Exercicio::find($id)->update($exercicio);
        if($update)
            return redirect('exercicio');
        else
            return redirect()->back()->withInput();
    }

    public function destroy($id)
    {
        $exercicio = Exercicio::find($id);
        if($exercicio){
            $exercicio->destroy($id);
            $msg = '* EXERCÍCIO REMOVIDO COM SUCESSO *';
        }
        else{
            $msg = '* EXERCÍCIO NÃO ENCONTRADO *';
        }
        return redirect()
            ->back()
            ->withSucess($msg);   
    }
}