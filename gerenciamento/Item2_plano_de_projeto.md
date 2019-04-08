Este documento é o plano de projeto para o desenvolvimento do sistema de venda de ingressos que será o projeto de Engenharia de Software.


#Introdução

O projeto de Engenharia de Software vai consistir em um sistema de venda de ingressos. Ele será implementado como um webapp. **Complementar com informações extras conforme o projeto for caminhando**

Para uma descrição mais detalhada do sistema consulte o [documento de visão](#blank) **Documento de visão ainda não foi feito**

Para uma descrição mais detalhada das features do sistema consulte o [documento de requisitos](item1_levantamento_de_requisitos.md)

#Organização do Projeto

##Equipe

A equipe do projeto será composta por 3 participantes: **Listar todos**.
##Ferramentas

Para este projeto utilizaremos diversas ferramentas disponíveis na Internet para atingir fins específicos dentro do projeto. A lista completa de Ferramentas utilizadas pode ser consultada na [lista de ferramentas](Item6_lista_de_ferramentas.md)

#Gerenciamento do Projeto
A metodologia de gerenciamento de projeto escolhida foi o Kanban. Kanban promotes continuous collaboration and encourages active, ongoing learning and improving by defining the best possible team workflow [2]. Esta metodologia está centrada em um _kanban board_: in software development, a visual representation of work for developers who pull tasks from the task backlog; used for on-demand or resource-bound scheduling [1].

Os princípios da metodologia Kanban [2] são:
- Visualize what you do today (workflow): seeing all the items in context of each other can be very informative
- Limit the amount of work in progress (WIP): this helps balance the flow-based approach so teams dont start and commit to too much work at once
- Enhance flow: when something is finished, the next highest thing from the backlog is pulled into play

Acreditamos que esta metologia será boa para nosso projeto principalmente em que ela (1) não define papéis específicos para os membros do time, e (2) por não ter sprints tão bem definidas, se adapta melhor à mudanças de tempo e demanda que outras metodologias.

#Cronograma do Projeto

O cronograma para o projeto está resumido no gráfico abaixo.

![](../assets/images/gantt_chart.png)

##Cronograma do Projeto - Lista
Abaixo o cronograma do projeto, separado em semanas, detalhando quais aspectos serão trabalhados em cada semana

####Semana 1 ( 1 ~ 7 abril)
	- Levantamento de Requisitos
	- Levantamento das Ferramentas (item 6)
	- Descrição do processo de controle de versões (item 9)
	* Refinamento do plano de projeto no estilo Gantt Chart

####Semana 2 (7 ~ 15 de Abril)
	- Documento de visão (item 4)
	- Começar a definir arquitetura do projeto (modelagem do BD e design geral)
	- Definir alguns modelos de uso (item 5)

####Semana 3~4 ( 15 ~ 29 abril)
	- Implementação do BD
	- Design das views principais do projeto

####Semana 5~6 (29 abril ~ 13 maio)
	- Implementação das princiapis views do projeto

####Semana 7~8 (13 ~ 27 maio)
	- Implementação de Login e Senha
	- Implementação de outros requisitos do projeto

####Semana 9 (27 ~ 3 de junho)
	- Revisão dos requisitos
	- Revisão da documentação
	- Teste alpha

####Semana 10~11 (3 ~ 17 junho)
	- Finalização do projeto

# Controle de Qualidade

Para garantir a qualidade do sistema utilizaremos a metodologia TDD (Test-Driven Development), que consiste em escrever os testes do sistema **antes** de codificar cada parte do sistema em si. Assim, poderemos garantir um nível de qualidade para o todo o sistema que for codificado.

Além disso, no período de finalização do projeto será feito um teste alpha do sistema.
#Referências
[1] SE Vocab, "Kanban". https://pascal.computer.org/sev_display/search.action
[2] Collab Net, An Introduction to Kanban Methodology. https://resources.collab.net/agile-101/what-is-kanban