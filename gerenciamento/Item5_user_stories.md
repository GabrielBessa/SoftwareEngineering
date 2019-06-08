Este documento reúne as histórias de usuário usadas como requisitos para o sistema.
Cada conjunto de histórias está separado pelos atores à que elas se referem.

Uma história possui uma descrição e uma lista de restrições que devem ser cumpridas.

Os atores do sistema são:

1. Usuário sem cadastro
2. Usuário visitante 
3. Dono de evento

# Observações
Os usuários visitantes são aqueles que já possuem um cadastro e já fizeram a autenticação com seus dados cadastrais.

Os usuários donos de evento são os usuários visitantes que já adicionaram um evento. Eles são donos somente dos eventos que eles mesmos adicionaram.

# Histórias de usuários sem cadastro

Como um **usuário sem cadastro**, quero **poder me cadastrar no sistema, utilizando CPF, email e uma senha de minha escolha** para poder visualizar os eventos disponíveis, comprar ingressos para eventos e cadastrar eventos.

**Restrições:** 
Para se cadastrar será necessário um endereço válido de email que não esteja cadastrado por nenhum outro usuário.

# Histórias de usuários visitantes

Como um **usuário visitante** quero **poder visualizar eventos disponíveis no sistema** para ver quais são de meu interesse.

Como um **usuário visitante** quero **ter informações sobre o nome do evento, local e hora da apresentação, faixa etária do evento, o tipo de evento e quantos ingressos estão disponíveis** para analisar se tenho interesse em adquirir um ingresso.

Como um **usuário visitante** quero **poder buscar eventos específicos por nome, local, data de realização, faixa etária ou uma combinação destes parâmetros** para filtrar as opções que me interessam.

Como um **usuário visitante** quero **poder comprar um ou mais ingressos de um evento** para poder participar dele. 

Como **usuário visitante** quero **ser informado sobre qualquer mudança nos eventos para os quais eu comprei ingressos** para ficar atualizado sobre estes.

**Restrições:**
Um evento deve ter sido escolhido e ainda ter ingressos disponíveis.

Como um **usuário visitante** quero poder **cadastrar eventos dos quais serei dono** para disxá-los disponíveis à outros usuários.

Como um **usuário visitante** quero poder **cancelar meu cadastro no sistema** para não mais utilizá-lo.

# Histórias de Donos de Eventos
Como um **dono de evento** quero poder **visualizar os eventos que foram criados por mim** para ter mais informações sobre estes.

Como um **dono de evento** quero poder **saber quantos ingressos já foram comprados** dos meus eventos.

Como um **dono de evento** quero poder **editar os dados do meu evento** para mantê-lo atualizado

Como um **dono de evento** quero poder **remover um evento do sistema** para que ele não fique mais disponível para compra.

**Restrições:** Nenhum ingresso do evento pode ter sido comprado.