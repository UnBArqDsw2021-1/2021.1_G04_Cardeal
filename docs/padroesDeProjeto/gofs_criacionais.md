## GoFs Criacionais
## 1. Introdução


Os padrões de projeto criacionais fornecem diferentes mecanismos para a criação de objetos, mecanismos esses que possibilitam o aumento da reutilização do código e o aumento da flexibilidade desse mesmo código. Possilitando assim que o sistema se torne um sistema bem mais estruturado e independente de como os seus objetos são criados, compostos e representandos dentro do código. Dentro os padrões criacionais observados, alguns exemplos podem ser citados, são eles: abstract factory, singleton, builder, prototype.

## 2. Factory Method 
## 3. Abstract Factory 
## 4. Singleton  

## 4.1. Introdução

O padrão de projeto criacional singleton, trata-se de um padrão de projeto no qual se garante a existência apenas de uma instância de uma classe, enquanto este promove um ponto de acesso global a essa instância.
Com o singleton se faz necessário somente uma instância da classe, o que vai garantir uma única chamada, havendo assim uma melhora significativa no desempenho. Sendo assim, usando o padrão singleton, é garantido dentro do projeto que a instância única irá ocorrer.

## 4.2. Metodologia

 O padrão singleton foi estudadi e implementando de maneira direta no projeto. Estando evidente no desenvolvimento da aplicação na parte referente ao frontend do projeto. A sua implementação seguiu o seu padrão característico descrito na introdução de modo a preservar e ser possível indentífica-lo de maneira clara no projeto.

## 4.3. Estrutura

A abordagem do singleton é feita do seguinte modo e seguindo os seguintes parametros, deixando o construtor como privado, para que assim apenas o singleton possa instânciar a classe, criando um atributo privado que seja do mesmo tipo da classe ( instance ), implementando o método getInstance, de modo que este irá verificar se a instance já foi iniciada e se ainda não estiver iniciada irá fazer a sua inicialização de maneira única. Sendo assim, o singleton foi aplicado de maneira direta no front-end do projeto.

![structure-pt-br](https://user-images.githubusercontent.com/82710878/133836489-c90b5d3c-63e5-467a-af72-5d48570440ed.png)

Fonte: https://refactoring.guru/pt-br/design-patterns/singleton

### 4.4 Singleton aplicado no Projeto



## 5. Builder 
## 6. Multiton 
## 7. Object poll 
## 8. Prototype 
## 9. Referências

> Padrões de Projeto Observer. Disponível em: https://refactoring.guru/pt-br/design-patterns/singleton Acessado em: 18/09/2021
> Padrões de Projeto Observer. Disponível em: https://pt.wikipedia.org/wiki/Singleton#Em_Typescript Acessado em: 18/09/2021

## 10. Versionamento 

| Data       | Versão | Descrição         | Autores       | 
| ---------- | ------ | ----------------- | ------------- | 
| 30/08/2021 | 0.1    | Criação do arquivo| Estevao Reis  |
| 17/09/2021 | 0.2    | Estruturação do Arquivo| Estevao Reis |
| 19/09/2021 | 1.0    | Adição do Padrão Singleton| Luiz Gustavo  |              |
| 19/09/2021 | 2.0    | Adição da Introdução dos Padrões Criacionais| Luiz Gustavo  |              |
