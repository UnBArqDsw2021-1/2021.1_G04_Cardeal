# Reutilização de Código - Backend

## Introdução
Reutilização de código é a prática de reutilizar código existente em uma nova função ou em um novo software. ([Perforce](https://www.perforce.com/blog/qac/what-code-reuse-code-reuse-best-practices))

Para que a reutilização de código seja viabilizada, o código precisa ter uma qualidade alta. É preciso que o código seja seguro e confiável.
O desafio da reutilização de código se baseia em desenvolver código que torne possível a reutilização.

## Tipos de Reutilização
A reutilização pode ser categorizada pelas seguintes motivações:

 - Oportunística: quando se percebe no início de um projeto que há componentes prontos que podem ser utilizados.

 - Planejada: quando se desenvolve componentes de forma que sejam reutilizáveis no futuro.

Além disso, é possível caracterizar a reutilização como:

 - Interna: reutilização de um componente próprio da equipe. É uma alternativa quando se precisa manter um componente importante para o projeto.

 - Externa: quando se utiliza um componente de terceiros. Possui a vantagem de ter o custo reduzido, já que o componente já foi ou está sendo desenvolvido por outros, mas possui um custo de tempo para que a equipe aprenda o uso do componente.

Quanto à estrutura do reuso, o código pode ser:

 - Referenciado: o código cliente referencia o código reutilizado, possuindo ciclos de vida e versões diferentes.

 - Forked: o código cliente possui uma cópia local ou privada do código em reuso, dividindo os ciclos de vida e as versões.

## Reusabilidade no Framework NestJS
De acordo com a [documentação do NestJS](https://docs.nestjs.com/fundamentals/platform-agnosticism), o framework visa ser "agnóstico" em relação a plataformas, ou seja, é incentivado o desenvolvimento de partes reutilizáveis para compor o sistema completo.

Grande parte dos componentes podem ser utilizados em diferentes frameworks HTTP, como o Express, sobre o qual o Nest foi desenvolvido, assim como através de diferentes tipos de aplicações. Por exemplo, a feature de contexto do framework permite que sejam criados diversos tipos de aplicação a partir do Nest, como aplicações de linha de comando.

## Reusabilidade no Projeto Cardeal
No backend do projeto Cardeal, a reusabilidade de código se baseia principalmente na reusabilidade do próprio framework, assim como no uso de bibliotecas e de padrões de projetos.

A modularidade do Node e NestJS, promovida por sua arquitetura em 3 camadas, evita a repetição de código ao permitir que um módulo desenvolvido seja exportado para ser usado quantas vezes forem necessárias em um módulo exterior.

Esse tipo de reutilização pode ser caracterizada como oportunística e externa, já que o framework foi escolhido baseado em suas capacidades de reutilização de código.

No snippet de código a seguir, que representa o módulo principal da aplicação, é possível perceber que são importados os módulos de Propriedade, Cliente e Telefone. Dessa forma, evita-se que o código desses módulos seja reescrito e permite-se que eles sejam usados ainda em outros módulos.

[app.module.ts](https://github.com/UnBArqDsw2021-1/2021.1-g04-cardeal-back-end/blob/main/src/app.module.ts)
```
import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { PropertiesModule } from './modules/properties/properties.module';
import { ClientsModule } from './modules/clients/clients.module';
import { PhonesModule } from './modules/phones/phones.module';

@Module({
  imports: [PropertiesModule, ClientsModule, PhonesModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
```
Já no snippet a seguir, é possível ver uma injeção de dependência ocorrendo no construtor da classe PhonesController. Como foi visto no [módulo anterior](https://unbarqdsw2021-1.github.io/2021.1_G04_Cardeal/padroesDeProjeto/GRASPs/) da disciplina, a injeção de dependência garante que a classe será instanciada apenas uma vez para ser utilizada através da aplicação, ou seja, a mesma instância da classe PhonesService poderá ser utilizada ainda em outras classes, caso for necessário.

[phones.controller.ts](https://github.com/UnBArqDsw2021-1/2021.1-g04-cardeal-back-end/blob/main/src/modules/phones/phones.controller.ts)
```
import { Controller, Body, Patch, Param, Get } from '@nestjs/common';

import { PhonesService } from './phones.service';
import { UpdatePhoneDto } from './dto/update-phone.dto';

@Controller('phones')
export class PhonesController {
  constructor(private readonly phonesService: PhonesService) {}

  @Get()
  findAll() {
    return this.phonesService.findAll();
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updatePhoneDto: UpdatePhoneDto) {
    return this.phonesService.update(+id, updatePhoneDto);
  }
}
```
Os dois exemplos acima envolvem reutilização planejada e interna, já que os módulos foram feitos pela equipe do projeto intencionalmente de modo a ser reutilizado.

## Referência(s)

> [Perforce - Code Reuse](https://www.perforce.com/blog/qac/what-code-reuse-code-reuse-best-practices)
>
> [Wikipedia - Code Reuse](https://en.wikipedia.org/wiki/Code_reuse)
>
> [NestJS - Documentation](https://docs.nestjs.com/fundamentals/platform-agnosticism)

## Versionamento
| Data       | Versão | Descrição          | Autores       |
| ---------- | ------ | ------------------ | ------------- |
| 24/09/2021 | 0.1    | Criação do arquivo | Estevao Reis  |