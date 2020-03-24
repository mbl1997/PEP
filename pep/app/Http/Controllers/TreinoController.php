<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Aluno;
use App\Instrutor;
use App\Treino;
use App\Exercicio;
use App\Atividade;
use Auth;

class TreinoController extends Controller
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
        $treinos ['treinos'] = Treino::all();
        return view('treino.lista',$treinos);       
    }

    public function create()
    {
        $alunos ['alunos'] = Aluno::all();
        return view('treino.cadastro',$alunos);
    }

    public function edit($id)
    {
        $alunos = Aluno::all();
        $treino = Treino::find($id);
        $atividades = Treino::find($id)->atividades;
        return view('treino.cadastro',compact('treino','atividades','alunos'));
        // return view('treino.cadastro',compact('treino','alunos'));
    }

    public function store(Request $request)
    {   
        $novoTreino = new Treino;
        $this->validate($request,[
            'instrutor_id'=>'required',
            'aluno_id'=>'required',
            'titulo'=>'required',
        ]);
        $novoTreino->instrutor_id   = $request->instrutor_id;
        $novoTreino->aluno_id       = $request->aluno_id;
        $novoTreino->titulo         = $request->titulo;
        $novoTreino->comentario     = $request->comentario;
        $novoTreino->save();

        $treino = $novoTreino;
        $exercicios = Exercicio::all(); 
        $alunos = Instrutor::find($request->instrutor_id)->alunos; 
        return view('atividade/cadastro', compact('treino','exercicios','alunos'));
    }

    public function show($id)
    {
        
    }

    public function update(Request $request, $id)
    {
        $this->validate($request,[
            'instrutor_id'=>'required',
            'aluno_id'=>'required',
            'titulo'=>'required',
        ]);
        $atualizaTreino = [
            'instrutor_id' => $request->instrutor_id,
            'aluno_id' => $request->aluno_id,
            'titulo' => $request->titulo,
            'comentario' => $request->comentario,
        ];
        $update = Treino::find($id)->update($atualizaTreino);
        $atividades = Treino::find($id)->atividades;
        $exercicios = Exercicio::all(); 
        $alunos = Instrutor::find($request->instrutor_id)->alunos;
        $treino = Treino::find($id);
        if($update){
            return view('atividade/cadastro', compact('treino','exercicios','atividades','alunos'));
        } else{
            return redirect()->back()->withInput();
        }
    }

    public function destroy($id)
    {
        $treino = Treino::find($id);
        if($treino){
            $atividades = $treino->atividades;
            foreach ($atividades as $atividade) {
                $atividade_id = $atividade->id;
                $atividade->destroy($atividade_id);
            }
            $treino->destroy($id);
            $msg = 'Treino e suas atividades foram removidas com Sucesso.';
        }
        else{
            $msg = 'Treino não encontrado';
        }
        return redirect()
                ->back()
                ->withSucess($msg);  
    }

    public function lista($id)
    {
        $treinos ['treinos'] = Instrutor::find($id)->treinos;
        return view('treino.lista', $treinos);
    }

    public function selecionaAluno($treino_id)
    {
        $alunos = Aluno::all();        
        $treino = Treino::find($treino_id);
        return view('treino/selecionaAluno', compact('alunos', 'treino'));
    }

    public function indicarTreino(Request $request) // CLONA O TREINO COM SUAS ATIVIDADES PARA O NOVO ALUNO
    {      
        $treino = Treino::find($request->treino_id);
        
        // Clonar Treino para Novo aluno
        $novoTreino = new Treino;
        $novoTreino->instrutor_id   = $request->instrutor_id;
        $novoTreino->aluno_id       = $request->aluno_id;
        $novoTreino->titulo         = $treino->titulo;
        // Não salvar comentário porque é pessoal para cada aluno
        $novoTreino->save();
        $novoTreino_Id = $novoTreino->id; // Pegando o id do novo treino criado no banco
        
        // Clonar Atividades para novo Treino e novo Aluno (mesmo instrutor)
        $atividades = $treino->atividades;
        foreach ($atividades as $atividade) {
            $novaAtividade = new Atividade;
            $novaAtividade->treino_id = $novoTreino_Id;
            $novaAtividade->exercicio_id = $atividade->exercicio_id;
            $novaAtividade->instrutor_id = $request->instrutor_id;
            $novaAtividade->aluno_id = $request->aluno_id;
            $novaAtividade->ordem = $atividade->ordem;
            $novaAtividade->carga = $atividade->carga;
            $novaAtividade->series = $atividade->series;
            $novaAtividade->repeticoes = $atividade->repeticoes;
            $novaAtividade->comentario = $atividade->comentario;
            $novaAtividade->save();
        }
        // return view('treino/indicarTreino');
        // return view('treino/teste', compact('alunos'));
        return redirect('treino/lista/' . Auth::user()->id);
    }
}