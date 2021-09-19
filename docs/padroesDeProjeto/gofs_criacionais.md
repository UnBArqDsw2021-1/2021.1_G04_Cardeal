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

## 8.1. Introdução

O padrão de projeto criacional Prototype, trata-se de um padrão de projeto no qual um novo objeto é criado a partir de uma objeto original ou protótipo clonado deste objeto. O padrão Prototype é aplicado quando se existe a necessidade de clonar um objeto. Logo, funciona quando a aplicação necessecita de cópias exatas daquele objeto, em tempo de execução, sendo este o padrão altamente recomendado para realizar esta atividade, tarefa.

## 8.2. Metodologia

 O padrão prototype foi estudado, porém não está implementado de maneira direta no projeto. Mas se sim, a sua implementação seguiria o seu padrão característico descrito na introdução de modo a preservar e ser possível indentífica-lo de maneira clara no projeto.

## 8.3. Estrutura

A abordagem do prototype é feita do seguinte modo e seguindo os seguintes parametros, efetivamente possui-se três estruturas, prototype, prototype concreto e o client, sendo assim efetivamente o prototype irá declarar uma interface capaz de clonar a si mesmo, surgindo deste modo um prototype concentro, o client por sua vez cria um novo objeto atráves do prototype que tem a capacidade real de conseguir clonar a si mesmo. 

![Prototype_UML_(padrão)](https://user-images.githubusercontent.com/82710878/133909977-3f81dfac-f84c-42c3-8a3d-4aa94ea0a585.png)

Fonte: https://pt.wikipedia.org/wiki/Prototype#Estrutura

## 8.4. Prototype aplicado ao projeto

O padrão prototype não foi aplicado ao projeto.

## 9. Referências

> Padrões de Projeto Singleton. Disponível em: https://refactoring.guru/pt-br/design-patterns/singleton Acessado em: 18/09/2021
> Padrões de Projeto Singleton. Disponível em: https://pt.wikipedia.org/wiki/Singleton#Em_Typescript Acessado em: 18/09/2021
> Padrões de Projeto Prototype. Disponível em: https://refactoring.guru/pt-br/design-patterns/prototype Acessado em: 18/09/2021
> Padrões de Projeto Prototype. Disponível em: https://pt.wikipedia.org/wiki/Prototype#:~:text=Prototype%2C%20na%20ci%C3%AAncia%20da%20computa%C3%A7%C3%A3o,ou%20prot%C3%B3tipo%20que%20%C3%A9%20clonado.&text=Evitar%20criar%20um%20novo%20objeto,diminui%20o%20custo%20de%20mem%C3%B3ria Acessado em: 18/09/2021
>  Padrões de Projeto Prototype. Disponível em: https://pt.wikipedia.org/wiki/Prototype#Estrutura  Acessado em: 18/09/2021

## 10. Versionamento 

| Data       | Versão | Descrição         | Autores       | 
| ---------- | ------ | ----------------- | ------------- | 
| 30/08/2021 | 0.1    | Criação do arquivo| Estevao Reis  |
| 17/09/2021 | 0.2    | Estruturação do Arquivo| Estevao Reis |
| 18/09/2021 | 1.0    | Adição do Padrão Singleton| Luiz Gustavo  |              |
| 18/09/2021 | 1.1    | Adição do Padrão Prototype| Luiz Gustavo  |              |
| 19/09/2021 | 2.0    | Adição da Introdução dos Padrões Criacionais| Luiz Gustavo  |              |
