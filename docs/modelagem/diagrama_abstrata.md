# Diagrama de classe abstrata


## 1. Introdução

Uma classe abstrata é uma classe que só pode ser usada como superclasse de outra classe; nenhum objeto de uma classe abstrata pode ser criado, exceto como instâncias de uma subclasse. [1]


## 2. Metodologia

Uma classe e operações abstrata podem ser mostradas seja por uma etiqueta {abstract} ou pela colocação do nome em itálico. Sabendo desse procedimento, identificamos no começo do projeto, uma forma de generalizar os atributos e métodos de **Cliente**, **Corretor** e **Proprietário**. Onde seriam generalizados para uma classe abstrata chamada **Pessoa**. Sendo assim, os atributos recorrentes nas classes concretas vindo de Pessoa seriam o nome(name), cpf, email. Abrindo então oportunidades para outras especificações de atributos e métodos para as classes especializadas.

## 3. Diagrama

<p align="center">
  <img src="../img/classeAbstrata.png" />
</p>

## 4. Conclusão

Com a criação dessa classe abstrata **Pessoa** para especializar as classes **Cliente**, **Corretor** e **Proprietário**, vimos que temos um controle de redundância em relação da criação de atributos e métodos repetidos e também coesão do código [2]. Sendo possível adicionar posteriormente no projeto outras abstrações de classes caso necessário.


## 5. Referências 

> [1] LARMAN, Craig. Utilizando UML e padrões : uma introdução à análise e ao projeto orientados a objeto e ao desenvolvimento iterativo. 3.ed. Porto Alegre : Bookman, 2007. 

> [2] SERRANO, Milene: Arquitetura e Desenho de software. AULA - MODELAGEM UML ESTÁTICA. Acessado em 19/08/2021

## 6. Versionamento

|Data | Versão | Descrição | Autor(es)|
| :--: | :--: | -- | :--: |
| 20/08/2021 | 1.0 | Criação do documento | [Bruno Nunes](https://github.com/brunocmo) |
| 21/08/2021 | 1.0 | Adição da imagem do diagrama | [Bruno Nunes](https://github.com/brunocmo) |
