# GoFs Comportamentais

## 1. Introdução

O GoF comportamental está preocupado com o algoritmo e a atribuição de responsabilidades entre objetos. Na área comportamental ele é descrito não somente como padrões de objetos ou classes, mas também como os padrões de comunicação entre eles. Esses padrões caracterizam um controle de fluxo complexo que é díficil de seguir no tempo de execução. Eles tiram de foco o controle de fluxo e lhe permite concentrar somente no caminho que os objetos estão interconectados.

## 2. Strategy

O strategy define uma família de algoritmos, encapsulando cada um, e faz eles serem intercambiáveis. Deixando o algoritmo variar independentemente dos clientes que vão usá-lo.

Uma motivação é que muitos algoritmos servem para quebrar um fluxo de texto em linhas. Construindo então esses algoritmos em classes que necessitam deles não são desejáveis por algumas razões como:

- Clientes que necessitam de quebrar as linhas são muitos mais complexos em diferentes interfaces utilizadas. Esses clientes são enormes e difíceis de se manter, especialmente se eles suportam múltiplos algoritmos com quebra de linha.

- Diferentes algoritmos que são apropriados em tempos diferentes. Não queremos o suporte de vários algoritmos múltiplos de quebra de linha se não iremos usar eles todos.

- É difícil adicionar novos algoritmos e modificar os antigos quando o suporte de quebra de cilha é uma parte íntegra do cliente.

[![Exemplo Quebra Linha](./img/quebraLInhaStrategy.png)](./img/quebraLInhaStrategy.png)

Para tentarmos evitar esses tipos de problemas, definimos então classes que encapsulam diferentes algoritmos de quebra de linha. Um algoritmo que é encapsulado dessa forma é chamado de Strategy.

Usamos o padrão Strategy quando

- muitas classes relacionadas diferem somente no seu comportamento. Strategies que fornecem um caminho para configurar uma classe com um de muitos comportamentos.
- é preciso diferentes variações de um algoritmo.
- um algoritmo usa a data de um cliente que ele não deve saber sobre. Use o padrão Strategy para evitar expor estrutura de dados complexos ou específicos.
- uma classe define muitos comportamentos, e eles aparecem como demonstrações condicionais múltiplas como operações.

[![Estrutura Strategy](./img/strategyStructure.png)](./img/strategyStructure.png)

Algo de ficar de olho para o padrão Strategy que tem os seguintes beneficios e desvantagens:

1. A escolha das implementações.

   Os Strategies podem prover diferentes implementações de um mesmo comportamento. O cliente pode escolher entre as strategies com diferentes trade-offs de tempo e espaço.

2. Clientes têm que perceber as diferentes Strategies.

   Esse padrão tem um potencial de desvantagem num cliente que necessita entender como as Strategies diferem antes da seleção de uma apropriada. Clientes podem estar expostos a problemas de implementação. Sendo assim, é dito que deve-se usar o padrão Strategy somente quando a variação do comportamento é relevante aos clientes.

3. Aumento no número de objetos.

   Os Strategies aumentam o número de objetos numa aplicação. Às vezes você pode reduzir essa sobrecarga implementando strategies que são objetos sem estado num contexto que pode ser compartilhado. Strategies compartilhadas não deveriam ter um estado de manutenção entre as invocações.

Utilizamos o Strategy como ToyExample para mostrar uma funcionalidade da nossa aplicação em relação a utilização de mídias, como imagens e vídeos onde serão mostrados na publicação de uma propriedade.

[![Toy Example Strategy ](./img/ToyExampleStrategy.png)](./img/ToyExampleStrategy.png)

Sendo assim, a ideia da pequena aplicação em java é justamente listar todas as mídias tanto em imagens como vídeo, o modesto console do java mostra como seria o fornecimento dessas informações.

[![Strategy Java Output](./img/ResultadoStrategy.png)](./img/ResultadoStrategy.png)

Fizemos esse exemplo em Java e o código pode ser visto na pasta "ToyExampleStrategy", onde abaixo temos uma parte do código:

[Código Java](../assets/ToyExampleStrategy/Cardeal.java)

## 3. State

O State permite que um objeto altere seu comportamento quando o seu estado interno mudo. O objeto vai parecer que mudou sua classe.

Como motivação, considere uma classe TPConnection que representa uma conexão de rede. O objeto TCP-Connection pode estar em diferentes estados: Estabelecido, Escutando e Fechado. Quando o objeto TCPConnecttion recebe um pedido de outros objetos, ele responde diferentemente dependendo do seu estado atual. Como exemplo, o efeito de um pedido Aberto, depende de onde a conexão permanece se é num estado Fechado ou Estabelecido. Quando o padrão State descreve como TCPConnection pode exibir diferentes comportamentos em cada estado.
Sendo assim, o estado da conexão delega todo o comportamento do objeto.

[![TCP Connection Exemplo State](./img/tcpState.png)](./img/tcpState.png)

Sempre que uma conexão muda de estado, o objeto TCPConnection muda o estado do objeto e seus usos. Quando a conexão vai de estabelecida para fechada, por exemplo, o TCPConnection vai trocar a instância TCPEstablished para a instância TCPClosed.

O padrão State é utilizado em um dos casos:

- O comportamento do objeto depende de seu estado, e tem que mudar seu comportamento no tempo de execução dependendo do seu estado.
- Operações tem uma grande demonstração condicional de várias partes que depende do estado de um objeto. Esse estado é geralmente representado por um ou mais constantes enumerados. De vez em quando, muitas operações vão conter a mesma estrutura condicional. O padrão State coloca cada caminho das respectivas condições em classes separadas. Isso deixa você tratar o estado de um objeto como um objeto em seu próprio direito de variar independentemente de outros objetos.

[![Estrutura State](./img/StateStructure.png)](./img/StateStructure.png)

Esse padrão tem como consequências:

- Deixa a transição de estados mais explícitas

  Quando um objeto define seu estado atual somente em termos de valores de dados internos, o mesmo estado de transição não tem representações explícitas; eles somente mostram os deveres de algumas variáveis. Introduzindo objetos separados por diferentes estados que fazem a transição mais explícita.

- Objetos State podem ser compartilhados

  Se o objeto State não tem instâncias de variáveis - isso é, o estado que eles representam está codificado totalmente ao seu tipo - então o contexto pode ser compartilhado a um objeto State.

## 4. Command

O Command encapsula a solicitação como um objeto, deste modo permitindo você a parametrizar clientes com diferentes solicitações, filas ou solicitações de relatórios, e o suporte a operações desfeitas.

[![Estrutura Command](./img/CommandStructure.png)](./img/CommandStructure.png)

Utilizar quando:

- Parametrizar objetos por uma ação a ser executada. Você pode expressar tal parametrização numa linguagem procedural através de uma função callback, ou seja, uma função que é registrada em algum lugar para ser chamada em um momento mais adiante. Os Commands são uma substituição orientada a objetos para callbacks;
- Especificar, enfileirar e executar solicitações em tempos diferentes. Um objeto Command pode ter um tempo de vida independente da solicitação original. Se o receptor de uma solicitação pode ser representado de uma maneira independente do espaço de endereçamento, então você pode transferir um objeto Command para a solicitação para um processo diferente e lá atender a solicitação;
- Suportar desfazer operações. A operação Execute, de Command, pode armazenar estados para reverter seus efeitos no próprio comando. A interface do Command deve ter acrescentada uma operação Unexecute, que o reverte.efeitos de uma chamada anterior de Execute. Os comandos executados são armazenados em uma lista histórica. O nível ilimitado de desfazer e refazer operações é obtido percorrendo esta lista para trás e para frente, chamando operações Unexecute e Execute, respectivamente.

O padrão Command tem as seguintes consequências:

- Command desacopla o objeto que invoca a operação daquele que sabe como fazer.
- Commands são objetos de primeira classe. Eles podem ser manipulados ou estendidos como qualquer outro objeto.
- É fácil adicionar novos Commands, porque vocÇẽ não tem que mudar classes existentes.

## 5. Iterator

 <p align = "justify"> Iterator é um padrão de projeto para fornecer seus elementos sem que sua estrutura interna seja exposta. Portanto, é um padrão, onde em uma coleção de dados fornece diferentes maneiras de acessar esses dados sem expor o encapsulamento dessa coleção.
A motivação para esse padrão de projeto, é não declarar todas as formas de percurso em um determinado conjunto de dados, em um objeto, mas deixar a critério do objeto Iterator em como será esse acesso aos elementos. Dessa forma, o usuário utilizando o iterator, percorre os dados da forma que deseja sem a necessidade de interagir com todos os dados da coleção. </p>

[![Iterator](./img/iterator.png)](./img/iterator.png){target=\_blank}

<h6 align = "center">Fonte: Padrões de Projeto: Soluções Reutilizáveis, GAMMA et al.,página 246.</h6></br>

Segundo o livro, Padrões de Projeto: Soluções Reutilizáveis, o padrão de projeto Iterator possui aplicabilidade em:

- para acessar os conteúdos de um objeto agregado sem expor a sua representação interna;

- para suportar múltiplos percursos de objetos agregados;

- para fornecer uma interface uniforme que percorra diferentes estruturas agregadas (ou seja, para suportar a iteração polimórfica).

<!-- ## 6. Mediator

## 7. Chain of Responsability -->

## 6. Observer

O Observer é um padrão de projeto que permite que os objetos ineteressados sejam avisados de mudaça de estado ou outros eventos que ocorram em um outro objeto. Ele também pode ser chamado de Publiser-Subscriber. GAMMA define o Observer da seguinte maneira:

"Definir uma dependência um-para-muitos entre objetos, de maneira que quando um objeto muda de estado todos os seus dependentes são notificados e atualizados automaticamente." (GAMMA et al., 2000, p.274).

[![img](https://upload.wikimedia.org/wikipedia/commons/8/8d/Observer.svg)](https://upload.wikimedia.org/wikipedia/commons/8/8d/Observer.svg)
_Fonte: https://pt.wikipedia.org/wiki/Observer_

### 6.1 Metodologia

A partir da reunião realizada no dia [17/09/2021](./atas/17-09-21.md) ficou decido entre os membros do grupo que os padrões de projeto seriam explicados para fins didáticos para enriquecer a documentação e aumentar a compreenção do conteúdo nos participantes do trabalho.

### 6.2 Aplicação no projeto

O padão Observer foi identificado e aplicado no front-end do projeto.

<!-- ## 9. Visitor -->

## 7. Memento

O Memento tem como intenção, sem que viole a encapsulação, a captura e a externalização dos estados internos de um objeto para que o objeto possa ser restaurado para esse estado posteriormente.

Algumas vezes é necessário gravar o estado inicial de um objeto. Sendo assim é necessário implementar checkpoint e desfazer mecanismos que deixem o usuário voltar nas tentativas anteriores de operações ou se recuperar de erros. Você tem que salvar o estado da informação em algum lugar, para que os objetos possam ser restaurados ao os estados anteriores. Mas os objetos normalmente encapsulam algumas ou todas as partes do seu estado, fazendo então inacessível a outros objetos é impossível de salvar externamente. Expondo esse estado pode violar a encapsulação, o que compromete a confiabilidade e extensibilidade da aplicação.

Considere um exemplo de um editor gráfico que suporta a conectividade entre objetos. Um usuário pode mover então dois retângulos conectados a uma linha alterando então o formato dos objetos e o alargamento da linha.

[![Exemplo 1 Memento](./img/MementoExampleOne.png)](./img/MementoExampleOne.png)

Vemos então que além dos estados serem gravados, são mantidas as posições dos objetos também com as operações onde levam o cálculo do alargamento da linha. Porém neste caso queremos desfazer essa ação voltando para o estado original, mas o suporte para desfazer não é tão fácil quanto parece. Um jeito óbvio de desfazer a operação de movimento seria guardar o valor de origem da distância que foi movida e voltar com essa distância armazenada. Contudo, isso não garante que todos os objetos irão aparecer onde eles estavam antes. Suponhamos que exista uma folga na conexão. Nesse caso, simplesmente mover um retângulo de volta a sua posição original não terá conquistado o efeito desejado.

[![Exemplo 2 Memento](./img/MementoExampleTwo.png)](./img/MementoExampleTwo.png)

Para resolvermos esse problema com o padrão Memento, o objeto memento armazena uma "fotografia" do estado atual interno de outro objeto - o originador do memento. O mecanismo de desfazer vai solicitar que um memento de um originador quando for necessário fazer o checkpoint do estado do originador. Quando o originador inicia o memento com a informação que caracteriza o seu estado atual. Somente o originador pode guardar e receber informação de um memento - o memento é "opaco" para outros objetos.

Aplicamos o padrão Memento quando

- alguma porção de um estado do objeto tem que ser salvado, assim ele pode ser restaurado mais tarde, e
- uma interface direta para obter o estado pode expor detalhes da implementação e quebrar a encapsulação do objeto.

[![Structure Memento](./img/MementoStructure.png)](./img/MementoStructure.png)

O padrão Memento tem consequências severas:

- Ele simplifica o Originator.

  Em outro tipo de designs que preservam o encapsulamento, o originator mantém a versão do estado interno que um cliente solicita. Isso inclui todo o armazenamento do gerenciamento do Originator. Tendo clientes que gerenciam o estado onde pedem por uma simplificação do Originator e mantém clientes de terem que notificar um originator quando são completados.

- Usar mementos podem ser caros.

  Mementos podem incluir sobrecargas consideráveis onde um Originator tem que copiar um grande montante de informação que são armazenadas no memento. A não que a encapsulação e restauração do estado Originator seja barato, o padrão pode não ser apropriado.

- Definindo interfaces estreitas e amplas.

  Pode ser difícil em algumas linguagem de programação em certificar-se que somente o originator pode acessar o estado do memento.

- Custos escondidos em zelar por mementos.

  O caretaker é responsável pela deleção de mementos que ele zela. Portanto, o caretaker não tem ideia do quanto de informação está no memento. Sendo assim, um caretaker leve pode inferir num largo custo de armazenamento quando ele guarda os mementos.

## 8. Template Method

### 8.1 Introdução

<p align = "justify"> Template Method é padrão de projeto comportamental com o propósito de definir uma sequência que a solução computacional irá percorrer. Portanto, a ideia central é criar um template de métodos que serão executados em etapas, não importando o que constitui internamente o método, para diferentes classes herdadas da classe que tenha o papel do Template Method, mas que essas classes seguiram as etapas definidas pela super classe. </br>
<cite>"Definir o esqueleto de um algoritmo em uma operação, postergando alguns passos para
as subclasses. Template Method permite que subclasses redefinam certos passos de um
algoritmo sem mudar a estrutura do mesmo."</cite> (GAMMA et al., 2000, p.301).</p>

### 8.2. Metodologia

<p align = "justify"> Para a criação do template method, foi estudado uma forma de implementar o padrão no projeto. Foi criado assim uma estrutura no <a href="https://app.diagrams.net/" target="_blank">Draw.io</a> e no momento de desenvolvimento do front-end verificar se essa estrutura pode ser implementada ou não neste momento. Assim, esse modelo poderá ser atualizado ao longo do tempo para melhor adaptar-se ao projeto.</p>

### 8.3. Template Method

#### 8.3.1. Template Method Estrutura

<p align = "justify"> A abordagem do Template Method é criar uma classe (TemplateMethodClass), para especificar a sequência de métodos que serão executados em ordem, assim, protegendo as subclasses para seguirem essa ordem estabelecida. Essa sequência de métodos pode ser sobrescrita nas classes herdadas, assim cada subclasse possui sua particularidade no método, mas não na sequência, ou o método da sequência pode ser padrão para todas as subclasses. </p></br>

<h6 align = "center">Figura 1 - Template Method estrutura, versão 1.0.</h6>

[![Template Method Estrutura](./img/exemplo_TemplateMethod1.png)](./img/exemplo_TemplateMethod1.png){target=\_blank}

<h6 align = "center">Fonte: Site <a href="https://app.diagrams.net/" target="_blank">Draw.io</a></h6></br>
 
#### 8.3.2 Template Method Projeto

<p align = "justify"> A abordagem do Template Method para o projeto foi criada para que a sequência de métodos seja seguida por todas as subclasses, mas apenas um método da subclasse é diferente. Portanto a sequência foi esquematizada com o primeiro método fazendo a requisição para o banco de dados das postagens, o método da subclasse que diferencia entre os outros, é o método da filtragem, assim cada classe concreta, possui uma filtragem diferente, escolhida pelo usuário, e a última etapa da sequência é o método de exibição das postagens na página. </p></br>

<h6 align = "center">Figura 2 - Template Method Projeto, versão 1.0.</h6>

[![Template Method Estrutura](./img/projeto_template.png)](./img/projeto_template.png){target=\_blank}

<h6 align = "center">Fonte: Site <a href="https://app.diagrams.net/" target="_blank">Draw.io</a></h6></br>

## 9. Referências

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

> Command. Disponível em: <https://pt.wikipedia.org/wiki/Command> Acessado em: 19/09/2021

---

## 10. Versionamento

| Data       | Versão | Descrição                                 | Autores                                          |
| ---------- | ------ | ----------------------------------------- | ------------------------------------------------ |
| 30/08/2021 | 0.1    | Criação do arquivo                        | [Estevao Reis](https://github.com/estevaoreis25) |
| 13/09/2021 | 0.2    | Adição do conteúdo e Template Method      | [Tomás Veloso](https://github.com/tomasvelos0)   |
| 17/09/2021 | 0.3    | Estruturação do Arquivo                   | [Estevao Reis](https://github.com/estevaoreis25) |
| 19/09/2021 | 0.4    | Introdução do Observer                    | Gustavo Duarte Moreira                           |
| 19/09/2021 | 0.5    | Revisão e Correção Ortográfica do Arquivo | [Marcos Vinícius](https://github.com/marcos-mv)  |
| 19/09/2021 | 0.6    | Adição dos padrões 2, 3, 4, 9             | [Bruno Nunes](https://github.com/brunocmo)       |
| 19/09/2021 | 0.7    | Adição ToyExample Strategy                | [Bruno Nunes](https://github.com/brunocmo)       |
| 20/09/2021 | 0.8    | Adição do padrão 5                        | [Tomás Veloso](https://github.com/tomasvelos0)   |
