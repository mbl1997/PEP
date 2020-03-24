# Criando novo projeto em Laravel
1) No terminal navegar até o diretório onde deseja criar o projeto
ex:
cd Desktop
composer create laravel/laravel NomeDoProjeto

# Trabalhando com Migrations
1) Criar a tabela
Para criar uma tabela no BD temos que criar um arquivo de migration.
Ex.:
php artisan make:migration “NomeDoArquivoMigration” --create=”NomeDaTabelaComSNoFim”

php artisan make:migration CriarTabelaTestes --create=Testes

2) Modelar a tabela
Com esse passo criamos o arquivo migrate com o nome “CriarTabelaTestes”
Pra modelar a tabela a ser criada, precisamos adicionar os campos no arquivo “CriarTabelaTestes.php”
Ex:
public function up()
   {
       Schema::create('testes', function (Blueprint $table) {
           $table->increments('id');
           $table->string('nome');
           $table->string('email');
           $table->timestamps();
       });
   }

3) Criar a tabela no BD
php artisan migrate

4) Inserir dados na tabela (uma alternativa)
$ php artisan tinker

DB::table('testes')->insert(['nome'=>'Aurelio','email'=>'aurelio@gmail.com','created_at'=>new DateTime,'updated_at'=>new DateTime]);

5) Inserir novo campo na tabela sem perdas de dados

5.1) Criar novo arquivo migration, vamos chamar de CriaNovoCampo
php artisan make:migration CriaNovoCampo

5.2) Inserir na function up conforme o código:
public function up()
   {
       Schema::table('testes', function($table) {//definir a tabela a alterar
           $table->date('nascimento');//inserindo campo nascimento do tipo Date
       });
   }
5.3) Para executar a alteração:
php artisan migrate
OBS.: Estes passos servem apenas para uma única execução. Após o uso deve-se remover os arquivos de migration “.php” localizados no projeto, assim como os localizados no DB (mysql). Cuidado pra não apagar os outros arquivos, de nome diferentes.

6) Remover campo existente
6.1) Criar novo arquivo migration, vamos chamar de RemoveCampoExistente
php artisan make:migration RemoveCampoExistente

6.2) Inserir na function up conforme o código:
   public function up()
   {
       Schema::table('testes', function(Blueprint $table) {
           $table->dropDown('NomeDoCampo');
       });
   }
6.3) Para executar a alteração:
php artisan migrate
OBS.: Estes passos servem apenas para uma única execução. Após o uso deve-se remover os arquivos de migration “.php” localizados no projeto, assim como os localizados no DB (mysql). Cuidado pra não apagar os outros arquivos, de nome diferentes.


# Subindo alterações no Git
1) Antes de mais nada:
git pull

2) Após as alterações no projeto adicionar:
Ver o status:
git status
git add .

3) Commitar ()
git status
git commit -m “Aqui colocar o comentário da alteração”

4) Subir ao repositório remoto (github)
git status
git push -u origin master


# Boostrap 4 com Laravel (NÃO USAREMOS ESSA VERSÃO NO PROJETO)
1) Com o projeto criado instalar o npm packages pelo terminal:
npm install

2) Instalar o Bootstrap 4 no projeto:
npm install bootstrap@4.0.0-beta.2

3) Referenciar o Bootstrap 4 no Laravel 5.5
Abrir: resources / assets / sass / app.scss
Comentar a linha: @import "~bootstrap-sass/assets/stylesheets/bootstrap";
e no lugar adicionar: @import "node_modules/bootstrap/scss/bootstrap";

4) Fazer as seguintes alterações no arquivo:
resources / assets / sass / _variables.scss
Alterar: $font-size-base: 14px;
Para: $font-size-base: 1rem;

5) Para compilar todos os códigos, rodar no terminal o seguinte comando:
npm run dev

6) Alterar no arquivo  resources / assets / js / bootstrap.js
De: require('bootstrap-sass');
Para: require('bootstrap');

7) Rodar o comando abaixo novamente para recompilar os arquivos incluindo os js:
npm run dev
A partir daqui o Laravel 5.5 estará trabalhando com Bootstrap 4. Portanto deve-se utilizar as tags do mesmo, e não do Bootstrap 3.
