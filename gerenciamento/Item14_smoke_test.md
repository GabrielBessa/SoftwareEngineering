# Smoke Tests

## Teste: Cadastrar Usuário.
Condição: Não estar autenticado no sistema.
View: Tela de criação de cadastro do cliente.
Passos:
1. Ir para a view "Realizar cadastro"
2. Preencher campo "email" com "Example@example.com"
3. Preencher campo "Password" com uma senha qualquer de no mínimo 6 dígitos
4. Repetir a senha anterior no campo "Password confirmation"
5. Selecionar opção "Sign Up"

Resultado Esperado:
Usuário deverá ser redirecionado para a pagina Home do sistema

## Teste: Log in com usuário já previamente cadastrado
Condição: Não estar logado no sistema
View: Tela de login
Passos:
1. Realizar log out se estiver numa sessão
2. Preencher o campo "email" com um email existente que esteja cadastrado no sistema
3. Preencher o campo "password" com sua respectiva senha
4. OPCIONAL: selecionar o "Remember me" para ter o email salvo para a próxima seção em caso de log out
5. Selecionar opção Log in

Resultado Esperado:
Usuário deverá ser redirecionado para a página Home do sistema

## Teste: Log out com usuário em sessão.
Condição: Estar autenticado no sistema
View: Tela inicial
Passos:
1. Realizar log in caso não esteja logado, sendo redirecionado para a página inicial
2. Clicar no botão Log Out

Resultado Esperado:
Usuário será redirecionado para a página Home para selecionar entre Log In/Cadastro


## Teste: Gerar Ingresso.
Condição: Estar autenticado no sistema
View: Tela de gerar o ingresso para o cliente.
Passos:
1. Ir para a view "Ticket Type" através da home por meio de 'Tipo de ingresso' ou por meio da url uma vez autenticado;
2. Preencher o campo "Description" e o "Base Price"
3. Retornar a página principal por meio de 'Pagina inicial'
4. Ir no campo de "Salas" e criar uma sala nova
5. Retornar a página principal por meio de 'Pagina inicial'
6. Ir no campo de "Apresentações" e criar uma nova apresentação
7. Retornar a página principal por meio de 'Pagina inicial'
8. Ir no campo de "Salas de Apresentações" e criar uma apresentação nova.
  
Resultado Esperado:
Ingresso será gerado, porém sem nome nem atributo porque não está na tabela. Porém os Ids dos tickets serão mostrados para explicitar sua criação.


## Teste: Criar Método de Pagamento
Condição: Estar autenticado
View: Tela dos métodos de pagamentos
Passos:
1. Ir para a view "Métodos de pagamento" a partir da pagina inicial
2. Criar um método aleatório
3. Voltar para view clicando em "Back"

Resultado Esperado:
Um novo método de pagamento é criado
   
## Teste: Gerar um Pagamento
Condição: Estar autenticado
View: Tela dos métodos de pagamentos
Passos: 
1. Ir para a view "Pagamentos" a partir da pagina inicial
2. Preencher todos os dados pedidos(Se deixar algum em branco ele retorna erro)
3. Após criado o método, clicar em back para ver os últimos pagamentos gerados

Resultado Esperado:
Um novo pagamento é gerado

## Teste: Criar um local de evento
Condição: Estar autenticado
View: Tela de criação de eventos
Passos:
1. Ir para a view "Locais" a partir da página inicial
2. Preencher todos os dados pedidos(Se algum ficar em branco ele não salva no banco de dados)
3. Após criado o local, clicar em back para ver os locais que foram criados

Resultado esperado:
Novo local de evento é criado

## Teste: Criar uma cidade
Condição: Estar autenticado
View: Tela de criação de cidades
Passos:
1. Ir para a view "Cidades" a partir da página inicial
2. Preencher todos os dados pedidos(Se algum ficar em branco ele não salva no banco de dados)
3. Após criado a cidade, clicar em back para ver as cidades que foram criadas

Resultado Esperado: 
Nova cidade para hospedar um evento é criada.