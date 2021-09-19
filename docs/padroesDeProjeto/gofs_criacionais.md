## GoFs Criacionais
## 1. Introdução

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

## 3. Abstract Factory 
## 4. Singleton  
## 5. Builder 
## 6. Multiton 
## 7. Object Pool
## 8. Prototype 
## 9. Referências
1. [Refactoring Guru - Factory Method](https://refactoring.guru/design-patterns/factory-method)
2. [NestJS Documentation](https://docs.nestjs.com/)

## 10. Versionamento 

| Data       | Versão | Descrição                            | Autores      |
| ---------- | ------ | ------------------------------------ | ------------ |
| 30/08/2021 | 0.1    | Criação do documento                 | Estevao Reis |
| 15/09/2021 | 0.2    | Factory Method: adição da introdução | Pedro Haick  |