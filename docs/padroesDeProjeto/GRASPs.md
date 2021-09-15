# GRASPS
## 1. Introdução
 Segundo o artigo de Leandro Vilas Boas sobre Padrões, GRASPS (General Responsibility Assignment Software Patterns) foi criado com o intuito de tornar o código mais flexível, facilitando a manutenção e a extensibilidade.

Os padrões GRASP  consistem em uma série de princípios baseados em conceitos para atribuição de responsabilidades a classes e objetos na construção de bons softwares usando programação orientada a objetos.
## 2. Tipos de GRASPS

### 2.1. Criador
Segundo Larman em seu livro "Utilizando UML e Padrões" 
O GRASP Criador vem para resolver o seguinte problema;

*Quem deve ser responsável pela criação de uma nova instância de uma classe?*

Em seu livro ele diz que a criação de objetos é uma das atividades mais comuns em um sistema orientado a objetos. Conseqüentemente, é útil ter um princípio geral para a atribuição de responsabilidades de criação. Sendo essas responsabilidades bem atribuídas, o projeto apresentará acoplamento baixo, mais clareza, encapsulamento e reutilização.

O Criador propõe atribui à classe B a responsabilidade de criar uma instância da classe A se uma das seguintes condições for verdadeira:

- B “contém” A ou agrega A de modo composto.
- B registra A.
- B usa A de maneira muito próxima.
- B tem os dados iniciais de A, que serão passados para A quando ele for criado. Assim, B é um Especialista em relação à criação de A.

B é um criador de objetos de A. Se mais de uma opção se aplicar, prefira uma classe B que agregue ou contenha a
classe A.

#### 2.2. Aplicação no Projeto
Em nosso projeto esse GRASP é aplicavel, a medida que o corretor será o unico usuário da nossa plataforma de imobiliária, conforme é verificado em nosso [Backlog](../modelagem/backlog_do_produto.md) portanto será responsavel registrar tanto o dono do imóvel quanto o próprio imóvel, se tornando responsável por instanciar as [classes](../modelagem/diagrama_classes.md) de imóvel e do dono do imóvel


## Referências 

> Padrões GRASP — Padrões de Atribuir Responsabilidades. <https://medium.com/@leandrovboas/padr%C3%B5es-grasp-padr%C3%B5es-de-atribuir-responsabilidades-1ae4351eb204>. Acessado em 15/09/2021

>Larman, Craig. Utilizando UML e Padrões. Acessado em 15/09/2021
## Versionamento
| Data       | Versão | Descrição         | Autores       | Revisores    |
| ---------- | ------ | ----------------- | ------------- | -----------  |
| 30/08/2021 | 0.1    | Criação do arquivo| Estevao Reis  |            |
| 15/08/2021 | 0.2    | Introdução aos GRASPS e o GRASP Criador | Estevao Reis  |            |

