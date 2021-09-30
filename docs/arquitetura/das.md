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
 
&emsp;&emsp; Segue abaixo o diagrama, explicitando a relação entre as camadas e as tecnologias utilizadas em cada uma delas.
 
 
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
 
## 4. Visão de caso de uso
 
## 5. Visão Lógica
 
## 6. Visão de Processos
 
## 7.Visão de Implantação
 
## 8. Visão de Implementação
 
## 9. Visão de Dados
 
## 10. Tamanho e Desempenho
 
## 11. Qualidade
 
## 12. Referências
>"O que é padrão MVC? Entenda arquitetura de softwares!". Disponível em <https://www.lewagon.com/pt-BR/blog/o-que-e-padrao-mvc>. Acessado em 30/09/2021
> "O que é Angular?". Disponível em <https://angular.io/guide/what-is-angular>. Acessado em 30/09/2021
> "Node.js – O que é, como funciona e quais as vantagens". Disponível em <https://www.opus-software.com.br/node-js/>. Acessado em 30/09/2021.
> "Express - Framework web rápido, flexível e minimalista para Node.js". Disponível em <https://expressjs.com/pt-br/>. Acessado em 30/09/2021.
> TypeORM. Disponpivel em <https://typeorm.io/#/>. Acessado em 30/09/2021.
><https://docs.nestjs.com/>. Acessado em 30/09/2021.
>MANZANO, José.Augusto.N. G. MySQL 5.5 Interativo: Guia Essencial de Orientação e Desenvolvimento. Acesso em: 30/09/2021.
 
 
## Versionamento
| Data       | Versão | Descrição         | Autores       |
| ---------- | ------ | ----------------- | ------------- |
| 24/09/2021 | 0.1 | Criação do arquivo| Estevao Reis  |
| 27/09/2021 | 0.2 | Estruturação dos tópicos do documento| Estevao Reis |
| 30/09/2021 | 0.3 | Adição do tópico de Representação Arquitetural| Estevao Reis |