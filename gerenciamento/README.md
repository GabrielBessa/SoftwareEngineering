# SoftwareEngineering
Nesse repositório ficará o trabalho da matéria de Engenharia de Software 2019-1
- [Giovanni Guidini](https://github.com/Gguidini)
- [Gabriel Bessa](https://github.com/GabrielBessa)

## Instalando o ambiente de Rails localmente
- Antes de instalar o Rails, é necessário ter o Ruby em uma versão posterior a 2.2.2 e ter uma aplicação de banco de dados instalada em seu computador. Nesse projeto usamos o postgresql, entretanto o padrão do rails é o SQLite.

### Verificando a existência do Ruby em sua máquina
- Para verificar, apenas abra o terminal e digite: "ruby -v". Caso não tenha nenhuma versão do ruby, siga os passos da instalação:
  - Windows: https://rubyinstaller.org/ → Aqui instale a última versão do ruby disponível para windows.
  - Linux ou outros SO's: https://www.ruby-lang.org/en/documentation/installation/
### Verificando a existência de uma aplicação de banco de dados em sua máquina
- Para verificar a existência do postgresql, abra o terminal e digite "psql --version". Caso não tenha nenhuma versão, siga os passos da instalação dependendo de seu sistema operacional:
  - Windows: https://www.postgresql.org/download/windows/
  - Ubuntu: https://www.postgresql.org/download/linux/ubuntu/
  - Alguma outra distribuição: https://www.postgresql.org/download/

### Instalando o Rails em definitivo:
- Guia de instalação utilizado: https://guides.rubyonrails.org/getting_started.html
- Abra seu prompt de comando ou o terminal e digite: ``` gem install rails ```
- Para verificar se o rails foi corretamente instalado digite: ``` rails --version ```
- Se este último comando retornar a versão do rails, o projeto está pronto para ser rodado e testado.

### Rodando o projeto:
- Primeiramente escolha algum diretório para clonar o repositório localmente em sua máquina
- Depois, rode o seguinte comando para instalar as gemas: ``` bundle install ```.
- Instaladas as gemas, é necessário criar um banco de dados do projeto localmente, usando a aplicação posteriormente baixada. Para isso, utilize dos seguintes comandos(pode ser tudo em uma linha): ``` rails db:create db:migrate ```. Caso algo dê errado com a criação, ou a instalação do banco de dados não foi feita corretamente, ou então é só dar um ``` rails db:drop db:create db:migrate ```. Isso resultará na exclusão do banco, criação de um novo, e migrações que serão feitas.
- Para popular um pouco o banco de dados(Conta de administrador, dê um ```rails db:seed ```). 
- Se tudo ocorrer sem erros, ligue o servidor utilizando o seguinte comando: ``` rails s ```.
- Se o servidor ligar corretamente, apenas digite na url do seu navegador: ``` localhost:3000 ``` que você será redirecionado para a página do projeto em questão.