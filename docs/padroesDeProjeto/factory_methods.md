# Factory Methods (Métodos Fábrica)

## Introdução
O padrão Factory Method é um padrão de design criacional que disponibiliza uma interface para a criação de objetos em uma superclasse, porém permitindo que subclasses alterem o tipo de objeto a ser criado. ([Refactoring Guru - Factory Method](https://refactoring.guru/design-patterns/factory-method))

## Estrutura
O padrão é estruturado da seguinte forma:
1. Uma interface "Produto", que será comum a todos os objetos criados, é declarada.
2. Diferentes implementações da interface "Produto" são declaradas.
3. A classe "Criador" declara o método fábrica que retorna os novos objetos da classe "Produto". O tipo de retorno desse método deve ser o mesmo que a interface criada.

<center><img src="https://refactoring.guru/images/patterns/diagrams/factory-method/structure.png?id=4cba0803f42517cfe854" alt="Factory Method - Estrutura"></img>

<a text-align="center" href="https://refactoring.guru/design-patterns/factory-method">Refactoring Guru - Factory Method</a></center>

## Utilização em Código
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

## Referências
1. [Refactoring Guru - Factory Method](https://refactoring.guru/design-patterns/factory-method)
2. [NestJS Documentation](https://docs.nestjs.com/)

## Versionamento

| Data       | Versão | Descrição                    | Autores       | Revisores    |
| ---------- | ------ | ---------------------------- | ------------- | -----------  |
| 15/09/2021 | 0.1    | Criação do documento         | Pedro Haick   |              |
| 15/09/2021 | 0.2    | Adição da introdução         | Pedro Haick   |              |
| 15/09/2021 | 0.3    | Adição da estrutura          | Pedro Haick   |              |
| 15/09/2021 | 0.4    | Adição do uso em código      | Pedro Haick   |              |
| 17/09/2021 | 0.5    | Adição do snippet de código  | Pedro Haick   |              |