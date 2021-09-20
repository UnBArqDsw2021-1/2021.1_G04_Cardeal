# GoFs Estruturais
## 1. Introdução
    
## 2. Adapter 
## 3. Composite 

O padrão de projeto COMPOSITE é estrutural, permite que os objetos que fazem parte de uma relação parte-todo sejam agrupados e tratados da mesma forma. Compostos em estruturas de árvores.
Esse padrão permite que os clientes usem os objetos individuamente ou em composições, ele é capaz de fazer as mesmas operações em uma agregação de objetos(todo) e em objetos indivíduais(parte).

<center>
[![img](https://upload.wikimedia.org/wikipedia/commons/3/3d/CompositeBasic.gif)](https://upload.wikimedia.org/wikipedia/commons/3/3d/CompositeBasic.gif)

_Fonte: https://pt.wikipedia.org/wiki/Composite_
</center>

### 3.1 Metodologia

A partir da reunião realizada no dia [17/09/2021](./atas/17-09-21.md) ficou decido entre os membros do grupo que os padrões de projeto seriam explicados para fins didáticos para enriquecer a documentação e aumentar a compreenção do conteúdo nos participantes do trabalho.

### 3.2 Aplicação no projeto

Utilizando estrutura de árvore que é criada a partir de objetos, que podem conter vários métodos. Sendo visível no projeto ao se efetuar a criação de um objeto novo com mais de um método.

## 4. Bridge 
## 5. Decorator 

O padrão de projeto estrutural Decorator permite que sejam acoplados comportamentos novos para objetos de maneira dinâmica. Decorators são uma alternativa flexível ao uso de herança estendendo funcionalidades.


<center>
[![img](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/Decorator_UML_class_diagram.svg/1024px-Decorator_UML_class_diagram.svg.png)](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/Decorator_UML_class_diagram.svg/1024px-Decorator_UML_class_diagram.svg.png)

_Fonte: https://en.wikipedia.org/wiki/Decorator_pattern_
</center>
### 5.1 Metodologia

A partir da reunião realizada no dia [17/09/2021](./atas/17-09-21.md) ficou decido entre os membros do grupo que os padrões de projeto seriam explicados para fins didáticos para enriquecer a documentação e aumentar a compreenção do conteúdo nos participantes do trabalho.

### 5.2 Aplicação no projeto

O padrão Decorator não foi aplicado ao projeto.


## 6. Facade 
## 7. Flyweight 

O Flyweight(peso-mosca) é um padrão de projeto estrutural que é apropriado quando muitos objetos precisam ser manipulados em memória RAM e possuem informações repetidas. Os objetos compartilham partes comuns de estado, em vez de manter todos os dados em cada objeto. Otimizando o uso de memória. 


<center>
[![img](https://refactoring.guru/images/patterns/diagrams/flyweight/example.png)](https://refactoring.guru/images/patterns/diagrams/flyweight/example.png)

_Fonte: https://refactoring.guru/pt-br/design-patterns/flyweight_
</center>

### 7.1 Metodologia

A partir da reunião realizada no dia [17/09/2021](./atas/17-09-21.md) ficou decido entre os membros do grupo que o padrão Flyweight seria estudado. Porém, conforme o escopo do projeto foi defido não foi visualizada a necessidade de implementação do padrão.

### 7.2 Aplicação no projeto

O padrão Flyweight não foi aplicado ao projeto.

## 8. Proxy 

## 8.1. Introdução

O padrão de projeto estrutural Proxy, é um padrão de projeto no qual uma classe irá funcionar de interface para outra coisa. Sendo assim, o Proxy pode fazer interface com praticamente qualquer coisa, desde uma conexão de rede a um arquivo.

## 8.2. Metodologia

 O padrão Proxy foi estudado, porém não está implementado de maneira direta no projeto. Mas se sim, a sua implementação seguiria o seu padrão característico descrito na introdução de modo a preservar e ser possível indentífica-lo de maneira clara no projeto.

## 8.3. Estrutura

A abordagem do Proxy é feita do seguinte modo e seguindo os seguintes parametros, o Proxy é um objeto wrappe que está sendo chamado pelo cliente para acessar o objeto de serviço real. Ao se chamar o Proxy, pode se encaminhar direto para o uso do serviço real ou oferecer uma lógica adicional, complementar aquele objeto, antes de propriamente encaminhar para ele, podendo fornecer um substituto ( ou placeholder ), adiciona nível estra de indireção e adicionar um agregador para proteger o componente real de complexidade indevida. 

![ilustracao-utilizacao-proxy](https://user-images.githubusercontent.com/82710878/133911984-fe0ee114-3a83-4a03-8a7d-28dc27c3ad4c.png)

Fonte: https://pt.wikipedia.org/wiki/Prototype#Estrutura

## 8.4. Proxy aplicado ao projeto

O padrão proxy não foi aplicado ao projeto.

## 9. Referências

> Arquitetura e Desenho de Software - Aula GoFs Estruturais. Disponívem em: https://aprender3.unb.br/pluginfile.php/897142/mod_label/intro/Arquitetura%20e%20Desenho%20de%20Software%20-%20Aula%20GoFs%20Estruturais%20-%20Profa.%20Milene.pdf. Acessado em: 18/09/2021
> Padrões de Projeto Proxy. Disponível em: https://pt.wikipedia.org/wiki/Proxy_(padr%C3%B5es_de_projeto)#:~:text=Em%20programa%C3%A7%C3%A3o%20de%20computadores%2C%20o,uma%20interface%20para%20outra%20coisa.&text=O%20uso%20do%20proxy%20pode,ou%20pode%20fornecer%20l%C3%B3gica%20adicional.  Acessado em: 18/09/2021
> Padrões de Projeto Proxy. Disponível em: https://refactoring.guru/pt-br/design-patterns/proxy/java/example.  Acessado em: 18/09/2021
> Padrões de Projeto Composite. Disponível em: https://pt.wikipedia.org/wiki/Composite. Acessado em: 18/09/2021
> Padrões de Projeto Decorator. Disponível em: https://en.wikipedia.org/wiki/Decorator_pattern. Acessado em: 18/09/2021 
> Padrões de Projeto Composite. Disponível em: https://pt.wikipedia.org/wiki/Flyweight. Acessado em: 18/09/2021
> Padrões de Projeto Estruturais. Disponível em: https://refactoring.guru/pt-br/design-patterns/structural-patterns. Acessado em: 19/09/2021
> Arquitetura e desenvolvimento de software — Parte 8 — Composite. Disponível em: https://medium.com/@gbbigardi/arquitetura-e-desenvolvimento-de-software-parte-8-composite-9d342d641a4a. Acessado em: 19/09/2021 


## 10. Versionamento 

| Data       | Versão | Descrição         | Autores       | 
| ---------- | ------ | ----------------- | ------------- | 
| 30/08/2021 | 0.1    | Criação do arquivo| Estevao Reis  |
| 17/09/2021 | 0.2    | Estruturação do Arquivo| Estevao Reis |
| 19/09/2021 | 0.3    | Adição do Padrão Proxy| Luiz Gustavo  |
| 19/09/2021 | 0.4    | Adição da Introdução | Gustavo Moreira  | 
| 19/09/2021 | 0.5    | Adição dos padrões Composite, Decorator e Flyweight | Gustavo Moreira |

