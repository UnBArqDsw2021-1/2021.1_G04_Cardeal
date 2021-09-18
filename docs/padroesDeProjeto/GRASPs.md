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

### 3.2. Aplicação no Projetos

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
<p align="justify">&emsp;&emsp;O termo "acoplamento" se refere ao nível de conexão (ou dependência) de um elemento a outros (DE LIMA, 2015). Logo, quanto maior o acoplamento entre classes de um projeto, mais difícil se torna a realização de mudanças, pois essas causam grande impacto, e a reutilização de código. Para a resolução deste problema, aplica-se o padrão de projeto de Baixo Acoplamento.</p>
<p align="justify">&emsp;&emsp;Vários conceitos estão envolvidos na utilização do Baixo Acoplamento. Além da aplicação de outros padrões de projeto, como a <i><a href = "#6-alta-coesao">Alta Coesão</a></i>, a <i><a href = "#8-indirecao">Indireção</a></i> e as <i><a href = "#10-variacoes-protegidas">Variações Protegidas</a></i>, ao implementar este padrão, também é utilizado o encapsulamento de informações e operações que sejam particulares às suas respectivas classes (BASSETTO, 2011). Através dessas implementações é possível reduzir o acoplamento de dados e de controle, aumentando a compreensão de cada classe isoladamente, facilitando sua reutilização e diminuindo o impacto das mudanças de outras classes (DE LIMA, 2015).</p>

### 7.1. Metodologia
<p align = "justify">&emsp;&emsp;Inicialmente a equipe não havia optado pela aplicação desse padrão em nosso projeto. Entretanto, na reunião ocorrida em <i><a href="https://unbarqdsw2021-1.github.io/2021.1_G04_Cardeal/padroesDeProjeto/atas/17-09-21/" target="_blank">17/09/2021</a></i>, a equipe responsável pelo back-end do produto informou que, ao longo do desenvolvimento do projeto, esse padrão havia sido utilizado. Logo, foi acordado pela equipe a elaboração deste tópico e a apresentação da sua implementação em nosso código.</p> 

### 7.2. Aplicação no Projeto
<p align="justify">&emsp;&emsp;O Baixo Acoplamento foi aplicado entre as classes ClientsController e ClientsServices. Apesar da dependência entre elas, foi aplicado o encapsultamento de informações através dos modificadores "private". Além disso, as operações implementadas pela ClientsController através da ClientsServices são decompostas em operações primitivas, evitando o acoplamento de controle.</p>

### 7.2.1. ClientsServices
![Code Example](./img/clientsService.jpeg)

<p align = "center">Autores: Douglas Castro e Pedro Haick</p>

O código acima pode ser visto com mais detalhes [aqui](https://github.com/UnBArqDsw2021-1/2021.1-g04-cardeal-back-end/blob/feature/sistema_de_cliente/src/modules/clients/clients.service.ts).

### 7.2.1. ClientsController
![Code Example](./img/clientController.png)

<p align = "center">Autores: Douglas Castro e Pedro Haick</p>

O código acima pode ser visto com mais detalhes [aqui](https://github.com/UnBArqDsw2021-1/2021.1-g04-cardeal-back-end/blob/feature/sistema_de_cliente/src/modules/clients/clients.controller.ts).

## 8. Indireção

## 9. Fabricação ou Invenção Pura

## 10. Variações Protegidas

## 11. Referências

- Larman, Craig. Utilizando UML e padrões. Bookman Editora, 2000.

- DE LIMA, Edirlei Soares. Análise e Projeto Orientados por Objetos - Aula 03 – Padrões de Projeto GRASP. 52 slides. 2015. Disponível em: https://edirlei.com/aulas/poo/POO_Aula_03_Padroes_Projeto_GRASP_2015.pdf

## 12. Versionamento
| Data       | Versão | Descrição         | Autores       |
| ---------- | ------ | ----------------- | ------------- |
| 30/08/2021 | 0.1 | Criação do arquivo| Estevao Reis  |
| 15/09/2021 | 0.2 | Adição da estrutura do documento| Douglas Castro |
| 16/09/2021 | 0.3 | Adição da introdução | Douglas Castro |
| 16/09/2021 | 0.4 | Adição da metodologia usada para o controlador | Douglas Castro |
| 17/09/2021 | 0.5 | Adição da controladores | Douglas Castro, Bruno Nunes, Pedro Haick e Gustavo Duarte |
| 17/09/2021 | 0.6 | Estruturação do Arquivo| Estevao Reis |
| 17/09/2021 | 0.7 | Revisão do Controlador | Giovana Dionisio |
| 17/09/2021 | 0.9 | Adição do tópico de Baixo Acoplamento | Giovana Dionisio |
