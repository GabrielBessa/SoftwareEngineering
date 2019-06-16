Esse documento apresentará o que devemos esperar da implementação ao longo do desenvolvimento do software de venda de ingressos.
Os tópicos serão moduralizados de forma que sejam apresentáveis e legíveis em todos aspectos.

## Consulta: 
Dados a serem consultados:
  - Classes do evento:
    - Teatro
    - Esporte
    - Show Nacional
    - Show Internacional  
      → Dentro desses eventos temos:
        - Eventos programados
        - Datas de início e término do período de evento(range)
        - Localidade do evento(Cidade e estado(sigla) que ocorrerá o evento)
  
## Resultado da consulta:
  - Nome do evento
  - Código de cada apresentação(ID)
  - Número da sala de cada apresentação
  - Quantidade de ingressos disponíveis para cada apresentação
  - Classe do evento(teatro, esporte, show nacional ou internacional)
  - Faixa etária do evento

## Admin do sistema(usuário do sistema na especificação)
  - Comprar ingresso
  - cadastrar evento
  - editar evento(mudar variáveis do evento)
    Para tal, o admin precisa se cadastrar(?) informando cpf e senha. 
    → DUVIDA: Perguntar pro chacon se não pode ter 1 admin pré-estabelecido já.

## Cadastro de Usuário(Sign up):
  - CPF
  - Senha
  - Número, código de segurança e data de validade (cartão de crédito)

## Ingressos:
  Após feito o cadastro e login:
  - Código da apresentação
  - Quantidade de ingressos desejada → Dar baixa nos ingressos pedidos e atualizar a quantidade restante que têm pra apresentação
  
## Usuário(quando autenticado):
  - Criar um evento(sendo responsável pelo mesmo);
  - Cadastrar, descadastrar, alterar o evento;

## Evento: → O usuário que criar o evento, é "admin" sobre o evento
  - Código do evento
  - Nome do evento
  - Código de cada apresentação
  - Data de cada apresentação
  - Horário de cada apresentação
  - Preço do ingresso de cada apresentação
  - Código da sala de cada apresentação
  - Cidade
  - Estado
  - Faixa Etária do evento
  - 
## Observações:  
  - Só o usuário que criou o evento pode alterar, descadastrar o evento.
  - Uma vez que um ingresso de alguma apresentação tenha sido comprado, o evento não pode ser excluido mais
  - Quando o evento é descadastrado, TODOS os dados do evento são excluidos do banco de dados(e consequentemente do sistema)
  - O responsável pelo evento pode solicitar informação sobre vendas do evento. Nesse caso para cada apresentação, o sistema vai listar a quantidade de ingressos vendidos e o CPF de cada comprador do ingresso.
  - Cada usuário pode se descadastrar do sistema, desde que o usuário excluído não seja responsável por nenhum evento cadastrado. 
  - Quando ocorre o descadastramento os dados do usuário são excluídos do sistema. Por fim, cada usuário cadastrado pode ser responsável por até no máximo 5 eventos. Cada evento cadastrado pode ter 10 apresentações associadas.