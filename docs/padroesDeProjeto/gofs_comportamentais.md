# GoFs Comportamentais
 
## 1. Introdução
## 2. Strategy
## 3. State
## 4. Command
## 5. Iterator
## 6. Mediator
## 7. Chain of Responsibility

### 7.1. Introdução

Esse design pattern também pode ser conhecido como CoR, Corrente de responsabilidade, Corrente de comando, Chain of command.

O Chain of Responsibility é um padrão de projeto comportamental que permite que você passe pedidos por uma corrente de handlers. Ao receber um pedido, cada handler decide se processa o pedido ou o passa adiante para o próximo handler na corrente.

![Adaptador](./img/chain.jpeg)
<p align = "center">Chain of Responsibility</p>

Fonte: [wiki](https://en.wikipedia.org/wiki/Chain-of-responsibility_pattern)
### 7.2. Metodologia

 O padrão Chain of Responsibility foi estudado, e será utilizado mais a frente no projeto para lidar com a questão da implementação do login do Corretor na aplicação. A sua implementação seguirá o seu padrão característico, descrito na introdução de modo a preservar e ser possível identificá-lo de maneira clara no projeto.

### 7.3. Estrutura

A redução do acoplamento é obtida dando a mais de um objeto a chance de lidar com a solicitação consequentemente. O item da cadeia recebe a solicitação e, após alguma lógica, passa a solicitação para o próximo handler ao longo da cadeia de handlers.

O primeiro objeto na cadeia recebe a solicitação e a trata ou encaminha para o próximo candidato na cadeia, que faz o mesmo. 

O objeto que fez a solicitação não tem conhecimento explícito de quem irá tratá-la - a solicitação tem um receptor implícito.

Este padrão inclui duas funções principais:

- **Handler** - define uma interface para lidar com solicitações, lida com a própria solicitação e implementa o link sucessor
- **Cliente** - inicia a solicitação para um objeto Handler na cadeia.

- **Main** -
componha cadeias apenas uma vez ou componha-as dinamicamente, dependendo da lógica do aplicativo
- **Concrete Handlers** - 
contém a lógica real para solicitações de processamento
ao receber uma solicitação, cada manipulador decide se deve processá-la e passá-la ao longo da cadeia
geralmente independente e imutável, aceitando todos os dados necessários, apenas um por meio do construtor

![ilustracao-adapter](./img/chain-structure.png)
<p align = "center">Diagrama UML - Chain of responsibility</p>

Prós  

- Capacidade de controlar a ordem de tratamento da solicitação.
- Atende **Princípio de Responsabilidade Única** que diz que uma classe deve possuir uma, e apenas uma responsabilidade. Pode-se traduzir isso em “uma classe deve ter apenas um motivo para mudar”.
- Atende **Princípio Aberto / Fechado**
que diz que as entidades de software (classes, módulos, funções, etc.) devem estar abertas para extensão, mas fechadas para modificação, ou seja, deve ser possível estender o comportamento de uma classe, mas não a modificar.

Contras

- Algum pedido pode acabar sem tratamento

### 7.4. Chain of Responsability aplicado ao projeto

O Padrão Chain of Responsability ainda não foi aplicado ao projeto. Quando implementado será referenciado neste tópico.

## 8. Observer
 
O Observer é um padrão de projeto que permite que os objetos interessados sejam avisados de mudança de estado ou outros eventos que ocorram em um outro objeto. Ele também pode ser chamado de Publiser-Subscriber. GAMMA define o Observer da seguinte maneira:
 
"Definir uma dependência um-para-muitos entre objetos, de maneira que quando um objeto muda de estado todos os seus dependentes são notificados e atualizados automaticamente." (GAMMA et al., 2000, p.274).
 
[![img](https://upload.wikimedia.org/wikipedia/commons/8/8d/Observer.svg)](https://upload.wikimedia.org/wikipedia/commons/8/8d/Observer.svg)
_Fonte: https://pt.wikipedia.org/wiki/Observer_ 
 
### 8.1 Metodologia

A partir da reunião realizada no dia [17/09/2021](./atas/17-09-21.md) ficou decidido entre os membros do grupo que os padrões de projeto seriam explicados para fins didáticos para enriquecer a documentação e aumentar a compreensão do conteúdo nos participantes do trabalho.

### 8.2 Aplicação no projeto
 
O padrão Observer foi identificado e aplicado no front-end do projeto. O Observable é uma classe que aplica o padrão Observer. É emitida uma notificação para o Observable sempre que ocorre uma mudança em um de seus itens e a partir disto podemos executar uma ação. Em nosso projeto ele foi aplicado para observar a resposta das requisições da API, retornando um objeto assim que a requisição concluir sua tarefa, ou retornando um erro caso não seja possível concluir a requisição.
 
![Observer](./img/gof-observe.png)

## 9. Visitor 

### 9.1. Introdução

Imagine que temos um objeto composto que consiste em componentes. A estrutura do objeto é fixa - não podemos alterá-la ou não planejamos adicionar novos tipos de elementos à estrutura.

Agora, como poderíamos adicionar novas funcionalidades ao nosso código sem modificar as classes existentes?

O padrão de design do Visitante pode ser uma resposta. Simplificando, teremos que fazer é adicionar uma função que aceita a classe visitante para cada elemento da estrutura.

Dessa forma, nossos componentes permitirão que a implementação do visitante os “visite” e execute qualquer ação necessária naquele elemento.

Em outras palavras, extraímos o algoritmo que será aplicado à estrutura do objeto das classes.

Consequentemente, fazemos bom uso do princípio Aberto / Fechado, pois não modificamos o código, mas ainda seremos capazes de estender a funcionalidade fornecendo uma nova implementação de Visitante.
### 9.2. Metodologia

 O padrão Chain of Responsibility foi estudado, e será utilizado mais a frente no projeto para lidar com a questão da implementação do login do Corretor na aplicação. A sua implementação seguirá o seu padrão característico, descrito na introdução de modo a preservar e ser possível identificá-lo de maneira clara no projeto.

### 9.3. Estrutura

![ilustracao-visitor](./img/visitor3.png)
<p align = "center">Diagrama UML - Visitor</p>

- **Visitor** (NodeVisitor) - declara uma operação Visit para cada classe de ConcreteElement no objeto
estrutura. O nome da operação e assinatura identifica a classe que envia
o pedido de visita ao visitante. Isso permite que o visitante determine o concreto
classe do elemento que está sendo visitado. Em seguida, o visitante pode acessar o elemento
diretamente por meio de sua interface específica.

- **Concrete Visitor** (TypeCheckingVisitor) - implementa cada operação declarada pelo Visitante. Cada operação implementa um fragmento do algoritmo definido para a classe de objeto correspondente na estrutura. ConcreteVisitor fornece o contexto para o algoritmo
e armazena seu estado local. Este estado geralmente acumula resultados durante o
travessia da estrutura.

• **Element** (Nó) - define uma operação Aceitar que leva um visitante como argumento.

- **ConcreteElement** (AssignmentNode, VariableRefNode)
-implementa uma operação Accept que leva um visitante como argumento.

• **ObjectStructure** (Programa)

- pode enumerar seus elementos.
- pode fornecer uma interface de alto nível para permitir que o visitante visite seus elementos.
- pode ser um composto ou uma coleção, como um lista ou um conjunto.

Prós  

- Um objeto visitante pode acumular algumas informações úteis ao trabalhar com vários objetos. Isso pode ser útil quando você deseja percorrer alguma estrutura complexa de objetos, como uma árvore de objetos, e aplicar o visitante a cada objeto dessa estrutura.
- Atende **Princípio de Responsabilidade Única** que diz que uma classe deve possuir uma, e apenas uma responsabilidade. Pode-se traduzir isso em “uma classe deve ter apenas um motivo para mudar”.
- Atende **Princípio Aberto / Fechado**
que diz que as entidades de software (classes, módulos, funções, etc.) devem estar abertas para extensão, mas fechadas para modificação, ou seja, deve ser possível estender o comportamento de uma classe, mas não a modificar.

Contras

- Você precisa atualizar todos os visitantes cada vez que uma classe é adicionada ou removida da hierarquia de elementos.
- Os visitantes podem não ter acesso necessário aos campos e métodos particulares dos elementos com os quais devem trabalhar.

### 9.4. Visitor aplicado ao projeto

O Padrão Visitor foi aplicado ao projeto. 
Seguem abaixo um exemplo onde é definido uma classe Imovel.

![ilustracao-adapter](./img/visitor1.png)
<p align = "center">Exemplo de model Angular12</p>

Foi criado uma camada de modelo usando o sistema de injeção de dependências e retirando a lógica de dentro do componente.

Essa model que é visitada pelos componentes  e serviços que necessitam do uso dessa classe.

![ilustracao-adapter](./img/visitor2.png)
<p align = "center">Utilização da model Imovel pelo serviço Imovel.</p>

Service é o objeto usado para organizar e/ou compartilhar estados de objetos e as regras de negócio da aplicação. Além de se utilizar do Visitor ele também é singleton, ou seja, há apenas uma instância disponível durante a vida útil da aplicação. Outra característica importante é a inicialização tardia (lazily instantiated), que só é efetuada quando o AngularJS identifica que tem algum componente dependente.

[Código Model](../assets/imovel.model.ts)

[Código Serviço](../assets/imovel.service.ts)

## 10. Memento 
## 12. Template Method 
 
A partir da reunião realizada no dia [17/09/2021](./atas/17-09-21.md) ficou decidido entre os membros do grupo que os padrões de projeto seriam explicados para fins didáticos para enriquecer a documentação e aumentar a compreensão do conteúdo nos participantes do trabalho.
 
## 10. Memento
## 12. Template Method
### 12.1 Introdução
 
<p align = "justify"> Template Method é padrão de projeto comportamental com o propósito de definir uma sequência que a solução computacional irá percorrer. Portanto, a ideia central é criar um template de métodos que serão executados em etapas, não importando o que constitui internamente o método, para diferentes classes herdadas da classe que tenha o papel do Template Method, mas que essas classes seguiram as etapas definidas pela super classe. </br>
<cite>"Definir o esqueleto de um algoritmo em uma operação, postergando alguns passos para
as subclasses. Template Method permite que subclasses redefinam certos passos de um
algoritmo sem mudar a estrutura do mesmo."</cite> (GAMMA et al., 2000, p.301).</p>
 
### 12.2. Metodologia
 
<p align = "justify"> Para a criação do template method, foi estudado uma forma de implementar o padrão no projeto. Foi criado assim uma estrutura no <a href="https://app.diagrams.net/" target="_blank">Draw.io</a> e no momento de desenvolvimento do front-end verificar se essa estrutura pode ser implementada ou não neste momento. Assim, esse modelo poderá ser atualizado ao longo do tempo para melhor adaptar-se ao projeto.</p>
 
### 12.3. Template Method
 
#### 12.3.1. Template Method Estrutura
 
<p align = "justify"> A abordagem do Template Method é criar uma classe (TemplateMethodClass), para especificar a sequência de métodos que serão executados em ordem, assim, protegendo as subclasses para seguirem essa ordem estabelecida. Essa sequência de métodos pode ser sobrescrita nas classes herdadas, assim cada subclasse possui sua particularidade no método, mas não na sequência, ou o método da sequência pode ser padrão para todas as subclasses. </p></br>
 
<h6 align = "center">Figura 1 - Template Method estrutura, versão 1.0.</h6>
 
[![Template Method Estrutura](./img/exemplo_TemplateMethod1.png)](./img/exemplo_TemplateMethod1.png){target=\_blank}
 
<h6 align = "center">Fonte: Site <a href="https://app.diagrams.net/" target="_blank">Draw.io</a></h6></br>
#### 12.3.2 Template Method Projeto
 
<p align = "justify"> A abordagem do Template Method para o projeto foi criada para que a sequência de métodos seja seguida por todas as subclasses, mas apenas um método da subclasse é diferente. Portanto a sequência foi esquematizada com o primeiro método fazendo a requisição para o banco de dados das postagens, o método da subclasse que diferencia entre os outros, é o método da filtragem, assim cada classe concreta, possui uma filtragem diferente, escolhida pelo usuário, e a última etapa da sequência é o método de exibição das postagens na página. </p></br>
 
<h6 align = "center">Figura 2 - Template Method Projeto, versão 1.0.</h6>
 
[![Template Method Estrutura](./img/projeto_template.png)](./img/projeto_template.png){target=\_blank}
 
<h6 align = "center">Fonte: Site <a href="https://app.diagrams.net/" target="_blank">Draw.io</a></h6></br>
 
## 12. Referências
 
> GAMMA, Erich; HELM, Richard; JOHNSON, Ralph; VLISSIDES, John. **Padrões de Projeto**: Soluções reutilizáveis de software orientado a objetos. Porto Alegre: Bookman, 2007.
 
---
 
> SERRANO, Milene. **Arquitetura e Desenho de Software:** Aula GoFs Estruturais, disponível em: [aprender3.unb](https://aprender3.unb.br/pluginfile.php/897143/mod_label/intro/Arquitetura%20e%20Desenho%20de%20Software%20-%20Aula%20GoFs%20Estruturais%20-%20Profa.%20Milene.pdf){target=\_blank} (último acesso: dia 13 de setembro de 2021).
 
---
 
> [Draw.io: The easiest way for Confluence teams to collaborate using diagrams](https://drawio-app.com/){target=\_blank}, acessado dia 11 de setembro de 2021.
 
---
 
> [Refactoring: Template Method](https://www.figma.com){target=\_blank}, acessado dia 11 de agosto de 2021.
 
---
 
> Padrões de Projeto Observer. Disponível em: <https://pt.wikipedia.org/wiki/Observer> Acessado em: 17/09/2021
 
---
 
> Padrão de projeto de software. Disponível em: <https://pt.wikipedia.org/wiki/Padr%C3%A3o_de_projeto_de_software#Padr%C3%B5es_GoF_('Gang_of_Four')> Acessado em: 17/09/2021
 
---
 
> Design Patterns – Observer. Disponível em: <https://www.devmedia.com.br/design-patterns-observer/16875> Acessado em: 17/09/2021
 
---
 
> Exploring the Observer Design Pattern. Disponível em: <https://docs.microsoft.com/en-us/previous-versions/msp-n-p/ee817669(v=pandp.10)?redirectedfrom=MSDN> Acessado em: 17/09/2021
 
---
 
## 13. Versionamento
 
| Data       | Versão | Descrição         | Autores       |
| ---------- | ------ | ----------------- | ------------- |
| 30/08/2021 | 0.1    | Criação do arquivo| [Estevao Reis](https://github.com/estevaoreis25)  |
| 13/09/2021 |  0.2   | Adição do conteúdo | [Tomás Veloso](https://github.com/tomasvelos0) |
| 17/09/2021 | 0.3   | Estruturação do Arquivo| [Estevao Reis](https://github.com/estevaoreis25) |
| 19/09/2021 | 0.5   | Introdução do Observer| Gustavo Duarte Moreira|
| 19/09/2021 | 0.6   | Revisão e Correção Ortográfica do Arquivo| [Marcos Vinícius](https://github.com/marcos-mv)|
| 19/09/2021 | 0.7 | Revisão | Marcos, Bruno, Gustavo, Igor, Estevão, Giovana, Tomás |
