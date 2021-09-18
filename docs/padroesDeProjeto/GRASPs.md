# Padrões de Software para Atribuição de Responsabilidade Geral - GRASP

## 1. Introdução

<p align="justify">&emsp;&emsp;Para Larman, os padrões GRASP <i>"nomeiam e descrevem princípios fundamentais de atribuição de responsabilidade a objetos"</i> (LARMAN, 2000). Criador, especialista, controlador, invenção pura, indireção, alta coesão, baixo aclopamento, polimorfismo e variações protegidas são alguns desses padrões e princípios descritos utilizados no GRASP.</p> 

## 2. Criador 

## 3. Controlador
<p align="justify">&emsp;&emsp;O padrão controlador <i>"é um objeto de interface, não-de-usuário responsável por tratar um evento de sistema. Um controller define o método para a operação de sistema"</i> (LARMAN, 2000). Normalmente, um controlador deve delegar a outros objetos o trabalho que precisa ser feito, ou seja, ele coordena ou controla uma atividade, mas não trabalha sozinho.</p>

<p align="justify">&emsp;&emsp;Dessa forma, um erro comum em projeto de controladores é dar-lhes muitas responsabilidades. Por isso, é uma boa prática delegar a outros objetos a execução de um evento, enquanto ele coordena a atividade(LARMAN, 2000). Alguns benefícios que os controladores trazem para uma aplicação é o maior potencial para reutilização e interfaces mais conectáveis.</p>

### 3.1. Metodologia

<p align = "justify">&emsp;&emsp;A partir das <i><a href="https://unbarqdsw2021-1.github.io/2021.1_G04_Cardeal/padroesDeProjeto/atas/30-08-21/" target="_blank">discussões</a></i> em equipe ocorrida no dia 30/08/2021, foi definido três padrões GRASP que seriam coerentes de se aplicar no nosso projeto. São eles: Criador, Controlador e Polimorfismo. Foi usado como insumo para os diagramas e implementações desses padrões o <i><a href="https://unbarqdsw2021-1.github.io/2021.1_G04_Cardeal/modelagem/diagrama_classes/" target="_blank">Diagrama de Classes</a></i>.</p> 
  
&emsp;&emsp;Para a construção dos diagramas foi usado a ferramenta [Draw.io](https://draw.io).

### 3.2. Aplicação no Projeto

<p align="justify">&emsp;&emsp;Os controladores implementados na nossa aplicação são os responsáveis por receber as requisições do browser. Por ter muitas atividades na aplicação e para evitar o "inchaço" de um controlador de fachada, optamos por implementar um controlador para cada classe concreta, onde esses ficaram responsáveis por coordenar as requisições recebidas por cada classe.</p>

#### 3.2.1. Diagrama

![Controladores](./img/controller1.svg)

<p align = "center">Autor: Douglas Castro</p>

#### 3.2.2. Controlador de Clientes

![Code Example](./img/clientController.png)

<p align = "center">Autores: Douglas Castro e Pedro Haick</p>

O código acima pode ser visto com mais detalhes [aqui](https://github.com/UnBArqDsw2021-1/2021.1-g04-cardeal-back-end/blob/feature/sistema_de_cliente/src/modules/clients/clients.controller.ts).

#### 3.2.3. Diagrama

![Controladores](./img/controller2.svg)

<p align = "center">Autor: Douglas Castro</p>

#### 3.2.4. Controlador de Propriedades

![Code Example](./img/propertyController.png)

<p align = "center">Autores: Bruno Nunes e Gustavo Duarte</p>

O código acima pode ser visto com mais detalhes [aqui](https://github.com/UnBArqDsw2021-1/2021.1-g04-cardeal-back-end/blob/feature/US04/src/properties/properties.controller.ts).

## 4. Polimorfismo 

## 5. Especialista na Informação

## 6. Alta Coesão

## 7. Baixo Acoplamento

## 8. Indireção
<p align="justify">&emsp;&emsp;A Indireção é um dos padrões que contribui para o <i><a href = "#7-baixo-acoplamento">Baixo Acoplamento</a></i> de um projeto. Ele consiste na criação de uma classe mediadora que irá ser delegada de responsabilidades (BOAS, 2019). Dessa forma, é possível evitar o acoplamento direto entre duas classes, aumentando a possibilidade de reuso do código (DE LIMA, 2015).</p>
<p align="justify">&emsp;&emsp; Esse padrão pode ser aplicado de diversas formas, inclusive com a aplicação de outros padrões de projeto, como o Controlador ou a Injeção de Dependência. Além disso, diversos outros Design Patterns, não só GRASPs, se beneficiam da aplicação deste conceito (BASSETTO, 2011).</p>

### 8.1. Metodologia
<p align="justify">&emsp;&emsp;A equipe decidiu pela elaboração deste tópico neste documento na <i><a href="https://unbarqdsw2021-1.github.io/2021.1_G04_Cardeal/padroesDeProjeto/atas/17-09-21/" target="_blank"> reunião do dia 17/09/2021</a></i>. Logo após, durante as pesquisas para sua construção, notou-se que a equipe já havia implementado este padrão no projeto.</p>

#### 8.1.1 Aplicação no Projeto
<p align="justify">&emsp;&emsp;Como citado anteriormente, a utilização do padrão <i><a href = "#3-controlador">Controlador</a></i> é uma das maneiras de aplicação do padrão de Indireção. Portanto, aplicamos este projeto ao implemetarmos as Controllers no nosso back-end.</p>


## 9. Fabricação ou Invenção Pura

<p align = "justify">&emsp;&emsp;São classes criadas da imaginação, que suporta uma alta coesão, um baixo aclopamento e reutilizações de maneira que o projeto desta invenção seja muito "<i>limpo</i>" e "<i>puro</i>", por isso elas são nomeadas como invenção pura. Essas classes podem ser entedidas como prestadoras de serviço e devem ter responsabilidades pequenas e coesas (LARMAN, 2000).</p>

<p align = "justify">&emsp;&emsp;Alguns benefícios que esse padrão traz é a alta coesão e o baixo aclopamento, já que está focado em um conjunto muito específico de serviço, e o potencial de reutilização que pode ser aumentado, visto que as responsabilidades a elas atribuídas podem ser reutilizadas em outras aplicações (JHA, 2016).</p>

### 9.1. Aplicação no Projeto

<p align = "justify">&emsp;&emsp;Não foi identificado esse padrão no projeto.</p>

## 10. Variações Protegidas

<p align = "justify">&emsp;&emsp;O padrão Variações Protegidas protege os elementos das variações em outros elementos (objetos, sistemas, subsistemas) com foco na instabilidade com uma interface e usando polimorfismo para criar várias implementações desta interface. Seu principal objetivo é proteger o sistema ou uma classe de variações previstas ou que tenham grandes possibilidades de ocorrer (BASSETTO, 2011).</p>

<p align = "justify">&emsp;&emsp;Podemos observar esse padrão quando precisamos integrar um sistema com API de pacotes de aplicações, por exemplo. Nessa situação a ideia é proteger o sistema ou uma determinada classe da possibilidade de alterações na interface do componente, do serviço ou da API (BASSETTO, 2011).</p>

### 10.1. Aplicação no Projeto

<p align = "justify">&emsp;&emsp;Não identificamos esse padrão no projeto.</p>

## 11. Referências

- Larman, Craig. Utilizando UML e padrões. Bookman Editora, 2000.
- JHA, Ranjeet. GRASP Design Principles. mySoftKey, 2016. Disponível em: https://www.mysoftkey.com/architecture/grasp-design-principles/. Acesso em: 17 de Agosto de 2021.
- BASSETTO, Nelson. RDD – Responsibility Driven Design e GRASP – General Responsibility Assignment Software Principles. Nelson Bassetto, 16 de Dezembro de 2011. Disponível em: http://nelsonbassetto.com/blog/tags/grasp/. Acesso em: 17 de Agosto de 2021.

## 12. Versionamento
| Data       | Versão | Descrição         | Autores       |
| ---------- | ------ | ----------------- | ------------- |
| 30/08/2021 | 0.1 | Criação do arquivo| Estevao Reis  |
| 15/09/2021 | 0.2 | Adição da estrutura do documento| Douglas Castro |
| 16/09/2021 | 0.3 | Adição da introdução | Douglas Castro |
| 16/09/2021 | 0.4 | Adição da metodologia usada para o controlador | Douglas Castro |
| 17/09/2021 | 0.5 | Adição dos controladores | Douglas Castro, Bruno Nunes, Pedro Haick e Gustavo Duarte |
| 17/09/2021 | 0.6 | Estruturação do Arquivo| Estevao Reis |
| 17/09/2021 | 0.7 | Revisão do Controlador | Giovana Dionisio |
| 17/09/2021 | 0.8 | Adição do padrão Invenção Pura | Douglas Castro |
| 17/09/2021 | 0.9 | Adição do padrão Variações Protegidas | Douglas Castro |
