# DAS - Documento de Arquitetura de Software
## 1. Introdução
 
## 2. Representação Arquitetural
&emsp;&emsp; Para desenvolver o sistema Web do projeto Cardeal, foi decidido que seria utilizado o padrão de projeto arquitetural Model-View-Controller(MVC), visto que é um padrão bastante utilizado no desenvolvimento de sistemas web. Segundo Vitor Zucher o MVC é um padrão de arquitetura de software responsável por contribuir na otimização da velocidade entre as requisições feitas pelo comando dos usuários. Com quase 50 anos de formulação, a arquitetura MVC é dividida em três camadas essenciais: View, Controller e Model.
 
#### View
&emsp;&emsp; Essa camada é responsável por apresentar as informações de forma visual ao usuário. Em seu desenvolvimento devem ser aplicados apenas recursos ligados a aparência como mensagens, botões ou telas. Esta camada está na linha de frente da comunicação com o usuário e é responsável por transmitir questionamentos ao controller e entregar as respostas obtidas ao usuário. É a parte da interface que se comunica, disponibilizando e capturando todas as informações do usuário.
Nesta camada, foi utilizado o framework front-end javascript [Angular](#angula)
 
#### Controller
&emsp;&emsp; Essa camada é responsável por intermediar as requisições enviadas pelo View com as respostas fornecidas pelo Model, processando os dados que o usuário informou e repassando para outras camadas. Foi utilizado o framework back-end [Nest.js](#nest) para compor essa camada, sendo ainda que , esse framework faz uso de outros como o [Node.js](#node) e o [Express](#exp), e o [TypeORM](#orm), estando esses dois últimos entre a camada de Controller e de Model.
 
#### Model
&emsp;&emsp; Essa camada é responsável por gerenciar e controlar a forma como os dados se comportam por meio das funções lógica e regras de negócios estabelecidas. Ele é o detentor dos dados que recebe as informações do Controller, valida se ela está correta ou não e envia a resposta mais adequada. Foi utilizado para compor essa camada o framework [Express](#exp) e o [TypeORM](#orm), fazendo a abstração da camada de modelo e a utilização do banco de dados [MySQL](#my).
 
&emsp;&emsp; Segue abaixo o diagrama, desenvolvido no [Canva](https://www.canva.com/), explicitando a relação entre as camadas e as tecnologias utilizadas em cada uma delas.
 
 
![Diagrama](./img/arquitetura.png)
 
### 2.1. Tecnologias
&emsp;&emsp; Neste tópico é abordado uma explicação geral sobre cada tecnologia utilizada na aplicação. Vale ressaltar que todas as tecnologias foram escolhidas pensando no suporte que elas possuem ao Typescript, visto que através dele podemos aplicar adequadamente os conceitos de Orientação a Objetos.
 
<a id="angula"></a>
 
#### Angula
&emsp;&emsp; Segundo a documentação oficial do Angula, ele é uma plataforma de desenvolvimento, construída em TypeScript. Como plataforma, o Angular inclui:
 
- Uma estrutura baseada em componentes para a construção de aplicativos da web escaláveis
- Uma coleção de bibliotecas bem integradas que cobrem uma ampla variedade de recursos, incluindo roteamento, gerenciamento de formulários, comunicação cliente-servidor e muito mais
- Um conjunto de ferramentas de desenvolvedor para ajudá-lo a desenvolver, construir, testar e atualizar seu código
 
<a id="node"></a>
 
#### Node.js
&emsp;&emsp;Segundo a Opus Software o Node.js pode ser definido como um ambiente de execução Javascript server-side. Isso significa que com o Node.js é possível criar aplicações Javascript para rodar como uma aplicação standalone em uma máquina, não dependendo de um browser para a execução.
 
<a id="exp"></a>
 
#### Express
&emsp;&emsp; Segundo o site oficial do Express, ele é um framework para aplicações web do Node.js mínimo e flexível que fornece um conjunto robusto de recursos para aplicativos web e mobile. Com uma miríade de métodos utilitários HTTP e middleware a seu dispor,  é possível criar facilmente uma API robusta de forma rápida. O Express fornece uma camada fina de recursos fundamentais para aplicativos da web, sem esconder os recursos já existentes do Node.js.
 
<a id="orm"></a>
 
#### TypeOrm
&emsp;&emsp; Segundo a documentação oficial do TypeORM, ele é um ORM(Object Relational Mapping) cujo objetivo é sempre oferecer suporte aos recursos JavaScript mais recentes e fornecer recursos adicionais que o ajudem a desenvolver qualquer tipo de aplicativo que use bancos de dados - desde pequenos aplicativos com algumas tabelas até aplicativos corporativos de grande escala com vários bancos de dados.
 
<a id="nest"></a>
 
#### Nest.js
 
&emsp;&emsp;Segundo a documentação do Nest.js ele é um framework para a construção de aplicações [Node.js](#node) do lado do servidor eficientes e escaláveis . Ele usa JavaScript progressivo, é construído com e suporta totalmente TypeScript e combina elementos de OOP (Programação Orientada a Objetos), FP (Programação Funcional) e FRP (Programação Reativa Funcional).O Nest faz uso de estruturas robustas de servidor HTTP como [Express](#exp).
 
<a id="my"></a>
 
#### MySQL
&emsp;&emsp;Segundo José Algusto em seu livro "MySQL 5.5 Interativo" o programa MySQL é um sistema de gerenciamento de banco de dados relacional que utiliza a linguagem de consulta estruturada SQL como interface de acesso e extração de informações do banco de dados em uso.
 
## 3. Metas Arquiteturais e Restrições

Os objetivos arquiteturais dizem respeito e trabalham em cima das metas mais significativas e das metas que foram impostas para tal projeto sendo assim, basicamente se trata que satisfaz as expectativas, desejos e necessidades dos Stakeholders do projeto. As restrições arquitetônicas de um projeto são definidas como condições que são impostas ao sistema e limitam a execução desse mesmo, tendo estas que serem cumpridas da maneira correta, para que este funcione de acordo com o esperado. 

### 3.1 Objetivos 
O que é referente às restrições, requisitos e objetivos da arquitetura do site online da corretora Cardeal, serão listados abaixo os pontos de maior importância para o projeto:
Segurança: A aplicação deve manter os dados dos usuários em segurança
Linguagem: A aplicação deve conter uma linguagem acessível e que possa ter um fácil entendimento pelo os usuários
Portabilidade: A aplicação deve ser funcionar e ser executada com desempenho igual ou próximo nos navegadores Google Chrome, Mozilla Firefox e Microsoft Edge
Usabilidade: é essencial que o sistema possibilite que o usuário a realize ações rapidamente e de maneira intuitiva
Escalabilidade: O software deve tornar possível sua evolução e manutenção.
Manutenibilidade: A aplicação deve permitir manutenção e melhorias de maneira a não gerar custo e tempo muito acima do normal.

### 3.2 Restrições
- Tecnologias: O desenvolvimento da plataforma deve seguir o planejamento a as tecnologias definidas pela equipe
- Conectividade: Conexão com a internet para que o usuário acesse ao site
- Prazo: A aplicação deverá ser finalizada dentro da data estipulada para entrega final do projeto
- Idioma: O site deve estar na linguagem Português-Brasil.
- Público alvo: A aplicação deve atender usuários que desejam os serviços do site da corretora Cardeal.

## 4. Visão de caso de uso
 
## 5. Visão Lógica
 
## 6. Visão de Processos
 
## 7.Visão de Implantação
 
## 8. Visão de Implementação
 
## 9. Visão de Dados
 
## 10. Tamanho e Desempenho
 
 
O tamanho do projeto, foi estimado em xMb. Esse valor foi alcançado e mensurado levando em consideração o Back-end e Front-end do site da corretora Cardeal.

Em relação à performance, o sistema foi desenvolvido com foco na otimização de resposta às requisições. Sendo assim, é esperado que o desempenho geral do sistema atenda às expectativas e à testes de Stress. Sendo capaz de: 
- O sistema deve ser capaz de suportar x usuários simultâneos em seu site
- O sistema deve ser capaz de carregar suas páginas em menos de 10 segundos 

## 11. Qualidade

>Canva. Disponível em <https://www.canva.com/>. Acessado em 30/09/2021.

## 12. Referências
>"O que é padrão MVC? Entenda arquitetura de softwares!". Disponível em <https://www.lewagon.com/pt-BR/blog/o-que-e-padrao-mvc>. Acessado em 30/09/2021

> "O que é Angular?". Disponível em <https://angular.io/guide/what-is-angular>. Acessado em 30/09/2021

> "Node.js – O que é, como funciona e quais as vantagens". Disponível em <https://www.opus-software.com.br/node-js/>. Acessado em 30/09/2021.

> "Express - Framework web rápido, flexível e minimalista para Node.js". Disponível em <https://expressjs.com/pt-br/>. Acessado em 30/09/2021.

> TypeORM. Disponpivel em <https://typeorm.io/#/>. Acessado em 30/09/2021.

>Documentação Nest.js.<https://docs.nestjs.com/>. Acessado em 30/09/2021.

>MANZANO, José.Augusto.N. G. MySQL 5.5 Interativo: Guia Essencial de Orientação e Desenvolvimento. Acessado em 30/09/2021.

>ORM - Object Relational Mapping - Revista Easy .Net Magazine 28. Disponível em <https://www.devmedia.com.br/orm-object-relational-mapping-revista-easy-net-magazine-28/27158>. Acessado em 30/09/2021.

## Versionamento
| Data       | Versão | Descrição         | Autores       |
| ---------- | ------ | ----------------- | ------------- |
| 24/09/2021 | 0.1 | Criação do arquivo| Estevao Reis  |
| 27/09/2021 | 0.2 | Estruturação dos tópicos do documento| Estevao Reis |
| 30/09/2021 | 0.3 | Adição do tópico de Representação Arquitetural| Estevao Reis |
| 05/10/2021 | 0.4 | Criação inicial dos tópicos 3 e 10| Luiz Gustavo  |

