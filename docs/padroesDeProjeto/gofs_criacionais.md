# GoFs Criacionais
## 1. Introdução


Os padrões de projeto criacionais fornecem diferentes mecanismos para a criação de objetos, mecanismos esses que possibilitam o aumento da reutilização do código e o aumento da flexibilidade desse mesmo código. Possibilitando assim que o sistema se torne um sistema bem mais estruturado e independente de como os seus objetos são criados, compostos e representados dentro do código. Dentro os padrões criacionais observados, alguns exemplos podem ser citados, são eles: abstract factory, singleton, builder, prototype.

## 2. Factory Method 
### Introdução
O padrão Factory Method é um padrão de design criacional que disponibiliza uma interface para a criação de objetos em uma superclasse, porém permitindo que subclasses alterem o tipo de objeto a ser criado. ([Refactoring Guru - Factory Method](https://refactoring.guru/design-patterns/factory-method))

### Estrutura
O padrão é estruturado da seguinte forma:
1. Uma interface "Produto", que será comum a todos os objetos criados, é declarada.
2. Diferentes implementações da interface "Produto" são declaradas.
3. A classe "Criador" declara o método fábrica que retorna os novos objetos da classe "Produto". O tipo de retorno desse método deve ser o mesmo que a interface criada.

<center><img src="https://refactoring.guru/images/patterns/diagrams/factory-method/structure.png?id=4cba0803f42517cfe854" alt="Factory Method - Estrutura"></img>

<a text-align="center" href="https://refactoring.guru/design-patterns/factory-method">Refactoring Guru - Factory Method</a></center>

### Utilização em Código
O padrão de Factory Method pode ser utilizado em conjunto com os padrões Singleton e Injeção de Dependência para instanciar apenas um objeto responsável pela criação de objetos atráves do código.

O framework NestJS, utilizada no back-end da aplicação, utiliza um método construtor para instanciar o objeto da aplicação, como é possível ver no snippet abaixo, disponível na [documentação do framework](https://docs.nestjs.com/).

```
import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  await app.listen(3000);
}
bootstrap();
```
Também é possível utilizar esse padrão na instanciação de pessoas, que podem ser clientes, proprietários ou corretores, como mostra o snippet abaixo.

```
interface Person {
    method(): string;
}

class Realtor implements Person {
    method(): string {
        return 'This is a realtor';
    }
}

class Client implements Person {
    method(): string {
        return 'This is a client';
    }
}

class Landlord implements Person {
    method(): string {
        return 'This is a landlord';
    }
}

abstract class PersonCreator {
    abstract createPerson(): Person;
}

class RealtorCreator extends PersonCreator {
    createPerson(): Person {
        const realtor: Person = new Realtor();
        console.log(realtor.method());
        return realtor;
    }
}

class ClientCreator extends PersonCreator {
    createPerson(): Person {
        const client: Person = new Client();
        console.log(client.method());
        return client;
    }
}

class LandlordCreator extends PersonCreator {
    createPerson(): Person {
        const landlord: Person = new Landlord();
        console.log(landlord.method());
        return landlord;
    }
}
```

## 3. Abstract Factory 
## 4. Singleton  

## 4.1. Introdução

O padrão de projeto criacional singleton, trata-se de um padrão de projeto no qual se garante a existência apenas de uma instância de uma classe, enquanto este promove um ponto de acesso global a essa instância.
Com o singleton se faz necessário somente uma instância da classe, o que vai garantir uma única chamada, havendo assim uma melhora significativa no desempenho. Sendo assim, usando o padrão singleton, é garantido dentro do projeto que a instância única irá ocorrer.

## 4.2. Metodologia

 O padrão singleton foi estudado e implementado de maneira direta no projeto. Estando evidente no desenvolvimento da aplicação na parte referente ao frontend do projeto. A sua implementação seguiu o seu padrão característico descrito na introdução de modo a preservar e ser possível identificá-lo de maneira clara no projeto.

## 4.3. Estrutura

A abordagem do singleton é feita do seguinte modo e seguindo os seguintes parâmetros, deixando o construtor como privado, para que assim apenas o singleton possa instanciar a classe, criando um atributo privado que seja do mesmo tipo da classe ( instance ), implementando o método getInstance, de modo que este irá verificar se a instance já foi iniciada e se ainda não estiver iniciada irá fazer a sua inicialização de maneira única. Sendo assim, o singleton foi aplicado de maneira direta no front-end do projeto.

![structure-pt-br](https://user-images.githubusercontent.com/82710878/133836489-c90b5d3c-63e5-467a-af72-5d48570440ed.png)

Fonte: https://refactoring.guru/pt-br/design-patterns/singleton


### 4.4 Singleton aplicado ao Projeto

![structure-pt-br](https://user-images.githubusercontent.com/82710878/133937083-9b869dd0-9676-4293-8352-70f960c68c17.png)

=======

## 5. Builder 

## 6. Multiton 
### Introdução
O padrão Multiton é uma extensão do padrão Singleton que permite instanciar um número limitado de objetos de uma classe a partir da especificação de uma chave para cada instância a ser criada. ([Blackwasp](http://www.blackwasp.co.uk/multiton.aspx))
### Estrutura
O padrão Multiton é bem similar ao Singelton. Quando é feita uma requisição por um objeto, é passada uma chave que criará um objeto ou retornará um já existente. Em essência, o Multiton faz o papel de um grupo de Singletons. ([Blackwasp](http://www.blackwasp.co.uk/multiton.aspx))
### Uso em Código
O padrão Multiton não é encontrado no código do projeto Cardeal.

## 7. Object Pool
### Introdução
Object Pool é um padrão de design criacional utilizado quando o custo de inicialização de uma classe é muito alto. uma Object Pool é um container que contém objetos. Quando um objeto é retirado da pool, só se torna disponivel após se devolvido. ([Geeks for Geeks](https://www.geeksforgeeks.org/object-pool-design-pattern/))
### Estrutura
Os objetos em uma Object Pool possuem o seguinte ciclo de vida:
 - Criação
 - Validação
 - Destruição

<center><img src="https://media.geeksforgeeks.org/wp-content/uploads/uml-pool-design.jpg" alt="Object Pool - Estrutura"></img>

<a text-align="center" href="https://www.geeksforgeeks.org/object-pool-design-pattern/">Geeks for Geeks - Object Pool</a></center>
1. Client: classe do código cliente que utiliza um objeto da Object Pool.
2. ReusablePool: classe cuja instanciação é custosa, logo é armazenada na Object Pool.
3. ObjectPool: classe que implementa a Object Pool. Mantém uma lista de objetos disponíveis e de objetos já requisitados.

([Geeks for Geeks](https://www.geeksforgeeks.org/object-pool-design-pattern/))
### Uso em Código
O padrão Object Pool não é encontrado no código do projeto Cardeal.

## 8. Prototype 

## 8.1. Introdução

O padrão de projeto criacional Prototype, trata-se de um padrão de projeto no qual um novo objeto é criado a partir de uma objeto original ou protótipo clonado deste objeto. O padrão Prototype é aplicado quando existe a necessidade de clonar um objeto. Logo, funciona quando a aplicação necessita de cópias exatas daquele objeto, em tempo de execução, sendo este o padrão altamente recomendado para realizar esta atividade, tarefa.

## 8.2. Metodologia

 O padrão prototype foi estudado, porém não está implementado de maneira direta no projeto. Mas se sim, a sua implementação seguiria o seu padrão característico descrito na introdução de modo a preservar e ser possível identificá-lo de maneira clara no projeto.

## 8.3. Estrutura

A abordagem do prototype é feita do seguinte modo e seguindo os seguintes parametros, efetivamente possui-se três estruturas, prototype, prototype concreto e o client, sendo assim efetivamente o prototype irá declarar uma interface capaz de clonar a si mesmo, surgindo deste modo um prototype concentro, o client por sua vez cria um novo objeto atráves do prototype que tem a capacidade real de conseguir clonar a si mesmo. 

![Prototype_UML_(padrão)](https://user-images.githubusercontent.com/82710878/133909977-3f81dfac-f84c-42c3-8a3d-4aa94ea0a585.png)

Fonte: https://pt.wikipedia.org/wiki/Prototype#Estrutura

## 8.4. Prototype aplicado ao projeto

O padrão prototype não foi aplicado ao projeto.

## 9. Referências


> Refactoring Guru - Factory Method. Disponível em: https://refactoring.guru/design-patterns/factory-method Acessado em: 15/09/2021
> NestJS Documentation. Disponível em: https://docs.nestjs.com/ Acessado em: 15/09/2021
> Blackwasp - Multiton. Disponível em:http://www.blackwasp.co.uk/multiton.aspx Acessado em: 15/09/2021 
> Geeks for Geeks - Object Pool. Disponível em: https://www.geeksforgeeks.org/object-pool-design-pattern/ Acessado em: 15/09/2021
> Padrões de Projeto Singleton. Disponível em: https://refactoring.guru/pt-br/design-patterns/singleton Acessado em: 18/09/2021
> Padrões de Projeto Singleton. Disponível em: https://pt.wikipedia.org/wiki/Singleton#Em_Typescript Acessado em: 18/09/2021
> Padrões de Projeto Prototype. Disponível em: https://refactoring.guru/pt-br/design-patterns/prototype Acessado em: 18/09/2021
> Padrões de Projeto Prototype. Disponível em: https://pt.wikipedia.org/wiki/Prototype#:~:text=Prototype%2C%20na%20ci%C3%AAncia%20da%20computa%C3%A7%C3%A3o,ou%20prot%C3%B3tipo%20que%20%C3%A9%20clonado.&text=Evitar%20criar%20um%20novo%20objeto,diminui%20o%20custo%20de%20mem%C3%B3ria Acessado em: 18/09/2021
>  Padrões de Projeto Prototype. Disponível em: https://pt.wikipedia.org/wiki/Prototype#Estrutura  Acessado em: 18/09/2021


## 10. Versionamento 

| Data       | Versão | Descrição         | Autores       | 
| ---------- | ------ | ----------------- | ------------- | 
| 30/08/2021 | 0.1    | Criação do arquivo| Estevao Reis  |
| 15/09/2021 | 0.2    | Factory Method: adição da introdução          | Pedro Haick  |
| 15/09/2021 | 0.3    | Factory Method: adição da estrutura           | Pedro Haick  |
| 15/09/2021 | 0.4    | Factory Method: adição do uso em código       | Pedro Haick  |
| 17/09/2021 | 0.5    | Factory Method: adição do snippet de código   | Pedro Haick  |
| 17/09/2021 | 0.6    | Estruturação do Arquivo| Estevao Reis |
| 19/09/2021 | 0.7    | Multiton: adição da introdução e estrutura    | Pedro Haick  |
| 19/09/2021 | 0.8    | Object Pool: adição da introdução e estrutura | Pedro Haick  |
| 18/09/2021 | 0.9    | Adição do Padrão Singleton| Luiz Gustavo  |              |
| 18/09/2021 | 1.0    | Adição do Padrão Prototype| Luiz Gustavo  |              |
| 19/09/2021 | 1.1    | Adição do Padrão Singleton| Luiz Gustavo  |              |
| 19/09/2021 | 1.2    | Adição da Introdução dos Padrões Criacionais| Luiz Gustavo  |              |
| 19/09/2021 | 1.3    | Adição da Introdução do Tópico 4.4 ( Singleton aplicado ao Projeto )| Luiz Gustavo  |              
| 19/09/2021 | 1.4    | Revisão e Correção ortográfica do arquivo| Marcos Vinícius |                |


