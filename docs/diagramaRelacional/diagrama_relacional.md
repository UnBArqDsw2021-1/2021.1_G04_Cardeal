# Diagrama Relacional

## 1.Introdução
O modelo relacional é um modelo de dados representativo, adequado a ser o modelo subjacente de um Sistema Gerenciador de Banco de Dados, que se baseia no princípio de que todos os dados estão armazenados em tabelas. Toda sua definição é teórica e baseada na lógica de predicados e na teoria dos conjuntos.

## 2.Metodologia
### 2.1 Como fazer:

<ol>

<li> Começamos com o modelo entidade-relacionamento (ME-R), que primeiramente é definida por suas entidades, sendo elas um conjunto de objetos que se guardam dados que são importantes para o mundo real. Em seguida definimos os atributos, onde define as características dessas entidades. E finalmente terminamos com o relaciomento que é um conjunto de associações entre as entidades. </li>
<li> Depois é projetado o diagrama entidade-relaciomento (DE-R), que representa graficamente uma estrutura lógica geral do banco de dados.  </li>
<li> E por final temos então a geração do diagrama lógico de dados (DLD), que representa graficamente por tabelas e relações com cada uma delas. </li>
</ol>
### 2.2 Modelo Entidade-Relacionamento

#### 2.1.1 Entidades
<ul>

<li> <strong>PERSON </strong> </li>
<li> <strong>CLIENT </strong> </li>
<li> <strong>PROPERTY </strong> </li>
<li> <strong>SCHEDULE </strong> </li>
<li> <strong>REALTOR </strong> </li>
<li> <strong>OWNER </strong> </li>
<li> <strong>MEDIA </strong> </li>
<li> <strong>TENANT </strong> </li>

</ul>

#### 2.1.2 Atributos

<ul>

<li> <strong>PERSON </strong> ( <u>idPerson</u>, name, cpf, { telephone } , email, createdAt, updatedAt ) </li>
<li> <strong>CLIENT </strong> ( <u>idClient</u>, idPessoa, createdAt, updatedAt ) </li>
<li> <strong>SCHEDULE </strong> ( <u>idSchedule</u>, dateMeeting, idClient, idProperty, createdAt, updatedAt ) </li>
<li> <strong>PROPERTY </strong> ( <u>idProperty</u>, <br>
address( state, city, district, street, number, zipNumber ), <br>
description(type,size, numberBedroom, numberBath, numberPark), <br>
status ,value, viewed, idOwner, idRealtor, createdAt, updatedAt) </li>
<li> <strong>REALTOR </strong> ( <u>idRealtor</u>, idPessoa, passwordHash, createdAt, updatedAt) </li>
<li> <strong>OWNER </strong> ( <u>idOwner</u>, idPessoa, createdAt, updatedAt ) </li>
<li> <strong>TENANT </strong> ( <u>idTenant</u>, idClient, idProperty, idRealtor ,dateBeginRent, dateEndRent ,createdAt, updatedAt ) </li>
<li> <strong>MEDIA </strong> ( <u>idMedia</u>, name, url, idProperty, createdAt, updateAt ) </li>

</ul>


#### 2.1.3 Relacionamentos

OWNER **owns** PROPERTY	<br>
cardinalidade 1:n <br>
Um DONO possui uma ou mais PROPRIEDADE mas uma PROPRIEDADE só pertence a um DONO.

PROPERTY **has** MEDIA <br>
cardinalidade 1:n <br>
Uma PROPRIEDADE possui uma ou várias MÍDIA e nenhuma ou uma MÍDIA só pertence a uma PROPRIEDADE.

PROPERTY **focused** SCHEDULE <br>
cardinalidade 1:n <br>
Uma PROPRIEDADE tem o foco em uma ou várias REUNIAO e uma REUNIAO é focada numa só PROPRIEDADE.

REALTOR **add** PROPERTY <br>
Cardinalidade 1:n <br>
Um CORRETOR pode adicionar uma ou várias PROPRIEDADES e uma PROPRIEDADES só pode ser adicionada por um CORRETOR.

REALTOR **marca** SCHEDULE <br>
Cardinalidade 1:n <br>
Um CORRETOR pode marcar uma ou várias REUNIÃO e uma REUNIÃO só pode ser marcada por um CORRETOR.

CLIENT **attends** SCHEDULE <br>
Cardinalidade 1:n <br>
Um CLIENTE pode frequentar uma ou várias REUNIÃO e uma REUNIÃO só pode ser frequentada por um CLIENTE.

SCHEDULE **realises** TENANT <br>
Cardinalidade 1:1 <br>
Uma reunião pode efetuar nenhum ou um só INQUILINO e um INQUILINO só pode ser efetuado por nenhum ou um só CLIENTE.


### 2.3 Diagrama Entidade-Relacionamento

<p align="center">
  <img src="../img/Cardeal_Conceitual.jpeg" />
</p>

### 2.4 Diagrama Lógico de Dados

<p align="center">
  <img src="../img/Cardeal_Logico.jpeg" />
</p>

## 3.Conclusão

Com esses diagramas, temos então uma ideia geral de como serão guardado os dados na aplicação. Sendo ela posteriormente modificada gradativamente para atender melhor o Sistema Gerenciador de Banco de Dados que será utilizado na solução computacional do projeto. 

## 4.Referência
> SILBERSCHATZ, A. & KORTH, H. F. Sistemas de Banco de Dados. São Paulo: Pearson Universidades, 2019

> Modelo relacional. Disponível em: <a href="https://pt.wikipedia.org/wiki/Modelo_relacional"> https://pt.wikipedia.org/wiki/Modelo_relacional </a>. Acessado em: Agosto/2021


## 5.Versionamento

| Data       | Versão | Descrição                         | Autores     |
| ---------- | ------ | --------------------------------- | ----------- |
| 19/08/2021 |  0.1   | Criação e elaboração do documento | Bruno Nunes e Marcos Vinicius |
| 19/08/2021 |  0.2   | Mudança de atributos das entidades | Igor Araujo |