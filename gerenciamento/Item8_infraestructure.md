Este documento traz sugestões de infraestrutura possíveis para colocar em produção o sistema de venda de ingressos.

# Limites mínimos de armazenamento
O sistema de ingressos não possui grandes necessidades de armazenamento. O tamanho a ser reservado para o sistema depende da expectativa do tamanho da base de usuários e da quantidade de eventos na base de dados. É sugerido que o sistema **tenha pelo menos 2TB de armazenamento, independente do tamanho estimado.**

Além disso, sugere-se:
- 1TB adicional a cada 100 mil eventos estimados
- 200GB adicionais a cada 100 mil usuários estimados

# Limites mínimos de processamento e RAM
O framework Rails é conhecido por ser relativamente *resource hungry*. Por conta disso recomenda-se usar máquinas relativamente poderosas, principalmente se o fluxo de requisições esperado é alto. Recomenda-se utilizar servidores com um mínimo de 20GB de RAM e um mínimo de 8 cores.

Recomenda-se utilizar Sistema Operacional Ubuntu Server (versão 16.04 ou maior)

# Infraestruturas Alternativas
Devido aos altos custos associados a comprar e manter um servidor, existem outras possibilidades para colocar o sistema em produção:

1. Comprar hospedagem de um provedor, respeitando os limites mínimos de recursos estabelecidos.
   Possíveis provedores: Hostgator, GoDaddy, UolHost, etc
2. Colocar o sistema em Nuvem. A vantagem dessa opção é que pode-se pagar apenas pelo que o sistema utilizar.
    Possíveis provedores: AWS, GoogleCloud, etc