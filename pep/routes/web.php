<?php

Auth::routes();

Route::prefix('')->group(function() {
    Route::view('/','welcome');
    Route::get('/home', 'HomeController@index')->name('home');
    Route::get('/admin/instrutor/lista', 'HomeController@listaInstrutor');
    Route::get('/admin/instrutor/{id}/edit', 'HomeController@editInstrutor');
    Route::view('/selectLogin', 'auth.selectLogin');
    Route::view('/selectRegister','auth.selectRegister');    
});

Route::resource('treino', 'TreinoController');
Route::resource('atividade', 'AtividadeController');
Route::resource('grupoMuscular', 'GrupoMuscularController');
Route::resource('exercicio', 'ExercicioController');
    
Route::prefix('grupoMuscular')->group(function() {
    Route::GET('/create/{id}', 'GrupoMuscularController@create2');
});

Route::prefix('treino')->group(function() {
    Route::GET('/lista/{id}', 'TreinoController@lista');
    Route::GET('/selecionaAluno/{id}', 'TreinoController@selecionaAluno');
    Route::POST('/indicarTreino', 'TreinoController@indicarTreino');
    // Route::POST('/salvar', 'TreinoController@salvar')->name('treino.salvar');
});

Route::prefix('atividade')->group(function() {
    Route::GET('/lista/{id}', 'AtividadeController@lista');
    Route::GET('/create/{id}', 'AtividadeController@createID');
});

Route::prefix('aluno')->group(function() {
    Route::GET('/home', 'AlunoController@index');
    Route::GET('/treinos/{id}', 'AlunoController@treinos');
    Route::GET('/atividades/{id}', 'AlunoController@atividades');
    Route::GET('/feedback/{id}', 'AlunoController@atividade_edit');
    Route::PUT('/feedback/{id}', 'AlunoController@feedback_store');
    Route::GET('/{id}/addinstrutor','AlunoController@selecionarInstrutor');
    Route::PUT('/registerInstrutor/{id}','AlunoController@updateInstrutor');
    Route::GET('/lista', 'AlunoController@show')->name('instrutor.lista');
    Route::GET('/{id}/edit', 'AlunoController@edit');
    Route::PUT('/{id}', 'AlunoController@update');
    Route::DELETE('/{id}', 'AlunoController@destroy');
    Route::GET('/', 'Aluno\LoginController@showLoginForm')->name('aluno.login');
    Route::POST('/','Aluno\LoginController@login');
    Route::POST('password/email','Aluno\ForgotPasswordController@sendResetLinkEmail')->name('aluno.password.email');
    Route::GET('password/reset','Aluno\ForgotPasswordController@showLinkRequestForm')->name('aluno.password.request');
    Route::POST('password/reset','Aluno\ResetPasswordController@reset');
    Route::GET('password/reset/{token}','Aluno\ResetPasswordController@showResetForm')->name('aluno.password.reset');
    Route::GET('register','Aluno\RegisterController@showRegistrationForm')->name('aluno.register');
    Route::POST('register','Aluno\RegisterController@register');
});

Route::prefix('instrutor')->group(function() {
    Route::GET('/home', 'InstrutorController@index');
    Route::GET('/alunos/{id}', 'InstrutorController@alunos');
    // Route::GET('/{id}/treinos', 'InstrutorController@gerenciaTreinos');
    Route::GET('/lista', 'InstrutorController@show')->name('instrutor.lista');
    // Route::GET('/{id}/edit', 'InstrutorController@edit');
    Route::PUT('/{id}', 'InstrutorController@update');
    Route::DELETE('/{id}', 'InstrutorController@destroy');
    Route::GET('/', 'Instrutor\LoginController@showLoginForm')->name('instrutor.login');
    Route::POST('/','Instrutor\LoginController@login');
    Route::POST('password/email','Instrutor\ForgotPasswordController@sendResetLinkEmail')->name('instrutor.password.email');
    Route::GET('password/reset','Instrutor\ForgotPasswordController@showLinkRequestForm')->name('instrutor.password.request');
    Route::POST('password/reset','Instrutor\ResetPasswordController@reset');
    Route::GET('password/reset/{token}','Instrutor\ResetPasswordController@showResetForm')->name('instrutor.password.reset');
    Route::GET('register','Instrutor\RegisterController@showRegistrationForm')->name('instrutor.register');
    Route::POST('register','Instrutor\RegisterController@register');
});