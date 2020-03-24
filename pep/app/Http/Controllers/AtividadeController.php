<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Atividade;
use App\Exercicio;
use App\Instrutor;
use App\Aluno;
// use Auth;

class AtividadeController extends Controller
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
        $atividades ['atividades'] = Atividade::all();
        $exercicios ['exercicios'] = Exercicio::all(); 
        return view('atividade.lista',$atividades,$exercicios);
    }

    public function create()
    {
        $exercicios = Exercicio::all(); 
        $alunos = Aluno::all(); 
        $treino = "null"; 
        return view('atividade.cadastro',compact('exercicios','alunos','treino'));
    }

    public function store(Request $request)
    {    
        $atividade = new Atividade;
        $this->validate($request,[
            'treino_id'=>'required',
            'exercicio_id'=>'required',
            'instrutor_id'=>'required',
            'aluno_id'=>'required',
        ]);
        $atividade->treino_id = $request->treino_id;
        $atividade->exercicio_id = $request->exercicio_id;
        $atividade->instrutor_id = $request->instrutor_id;
        $atividade->aluno_id = $request->aluno_id;
        $atividade->ordem = $request->ordem;
        $atividade->carga = $request->carga;
        $atividade->series = $request->series;
        $atividade->repeticoes = $request->repeticoes;
        $atividade->duracao = $request->duracao;
        $atividade->comentario = $request->comentario;
        $atividade->feedback = $request->feedback;
        $atividade->save();
        return redirect('treino/' . $atividade->treino_id . '/edit');
    }

    public function show($id)
    {
        // $alunos ['alunos'] = Alunos::all();
        // $exercicios ['exercicios'] = Exercicio::all();
        // $atividade ['atividade'] = Atividade::find($id);
        // return view('treino.lista',$exercicios,$alunos,$atividade);
    }

    public function edit($id)
    {
        $instrutor_id = Atividade::find($id)->instrutor->id;
        // $aluno = Atividade::find($id)->aluno;
        $exercicios = Exercicio::all();              
        // $alunos ['alunos'] = Instrutor::find($instrutor_id)->alunos; 
        $alunos = Aluno::all();
        $treino = Atividade::find($id)->treino;
        $atividade = Atividade::find($id);
        return view('atividade.cadastro',compact('atividade','treino','exercicios','alunos'));
    }

    public function update(Request $request, $id)
    {
        $this->validate($request,[
            'treino_id'=>'required',
            'exercicio_id'=>'required',
            'instrutor_id'=>'required',
            'aluno_id'=>'required',
        ]);
        $atividade = [
            'treino_id' => $request->treino_id,
            'exercicio_id' => $request->exercicio_id,
            'instrutor_id' => $request->instrutor_id,
            'aluno_id' => $request->aluno_id,
            'ordem' => $request->ordem,
            'carga' => $request->carga,
            'series' => $request->series,
            'repeticoes' => $request->repeticoes,
            'duracao' => $request->duracao,
            'comentario' => $request->comentario,
            'feedback' => $request->feedback,
        ];
        $update = Atividade::find($id)->update($atividade);
        if($update)
            return redirect('treino/' . $request->treino_id . '/edit');
        else
            return redirect()->back()->withInput();
    }

    public function destroy($id)
    {
        $atividade = Atividade::find($id);
        if($atividade){
            $atividade->destroy($id);
            $msg = '* ATIVIDADE REMOVIDA COM SUCESSO *';
        }
        else{
            $msg = '* ATIVIDADE NÃO ENCONTRADA *';
        }
        return redirect()
            ->back()
            ->withSucess($msg);   
    }

    public function lista($id)
    {
        $atividades ['atividades'] = Instrutor::find($id)->atividades;
        return view('atividade.lista', $atividades);
    }
}