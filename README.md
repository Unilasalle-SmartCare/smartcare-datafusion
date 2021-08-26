# smartcare-datafusion

O projeto visa fazer o tratamento e filtragem dos dados vindos de um sistema de sensores infravermelhos posicionados de forma nao intrusiva pela casa.

![TCC (2)](https://user-images.githubusercontent.com/26581648/131017344-0133c601-037b-49e0-a2f9-4e8ec1ef7d7c.png)

A ideia é usar uma instancia ec2 configurada com flask para criar uma api que irá fazer as requisiçoes no banco.
Nessa api temos uma rota que contem uma query sql ao qual seleciona certas tabelas, adiciona os valores em x ou y dependendo da direçao do sensor e multiplica por uma constante para transformar a mediçao para centimetros.
Assim que essa rota é chamada é realizado um acesso ao banco de dados RDS, ao qual vai retornar os valores solicitados já convertidos.
Depois disso a api flask transforma em JSON e retorna ao usuario.

Apos tentar implementar esse tratamento na aws e ter vários problemas de permissao e acesso decidi procurar algumas alternativas.
Temos a framework serverless, ela é uma escolha interessante pois tem um grande apoio na criaçao de apis flask, porem necessita de acesso com permissoes de admnistrador, coisa que no aws educade não é possivel, restando apenas tentar na conta normal.
Outra opção é tentar usar o heroku, porem em testes estava dando erro ao configurar a aplicão.
