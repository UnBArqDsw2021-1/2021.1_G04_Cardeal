## 1. Introdução

<p align="justify"> Este documento tem o objetivo de deixar explicito a dependência entre os requisitos para no contexto do projeto Cardeal. Neste documento será o identificado o problema, relaciona-lo as necessidades e os requisitos

## 2. Abreviações

PR - Problema

NE - Necessidade

RF - Requisito Funcional


## 3. Definição do Problema

|ID|O Problema|Afeta|Cujo Impacto|Uma boa Solução seria|
|-------------|----------|-----|------------|---------------------|
|PR01|O problema de se gerenciar toda a lista de propriedades para que os usuários consigam ter acesso de forma rápida e fácil|Afeta todos as pessoas que querem adquirir ou alugar um imóvel pela corretora Cardeal e quem quer mostrar um imóvel|Uma boa solução seria o desenvolvimento de um software que auxilie a corretora em sua dificuldade de controlar a visualização das propriedades|

## 4. Identificar Necessidades

|ID| Necessidade | Solução Atual| Solução Proposta |
|--|-------------|--------------|------------------|
|NE01| Ter uma forma do cliente se comunicar com a corretora cardeal|Uso de telefone ou whatsapp para se comunicar| Construir um chatbot para a comunicação entre as partes|
|NE02| Poder filtrar as propriedades de acordo com a necessidade | Só é possível ver as propriedades de forma sequencial e a filtragem não é eficiente | Fazer um software que permita o cliente buscar de forma mais detalhada cada imóvel|
|NE03| Poder visualizar imagens dos imóveis | É visualizada por uma planilha | Fazer uma área no software dedicada a visualização das imagens |
|NE04| Permitir que os administradores possam fazer CRUD de propriedades | O gerenciamento é feito adicionando os novos corretores no drive| Permintir com que todos os corretores possam adicionar novos dentro da software|
|NE05| Exibir descrição detalhada dos imóveis | O corretor tem que explicar cada uma das descrições para o usuário | Permitir com que o usuário possa visualizar a descrição do imóvel dentro da aplicação|
|NE06| Poder visualizar a localização do imóvel requerido | O usuário tem que pegar a localização com o corretor ou o endereço| Permitir com que o cliente possa ver a localização diretamente do software |
|NE07| Apresentar relatório para os administradores com métricas relacionadas aos imóveis | O sistema atual não possui métricas relacionadas aos clientes| Permitir que o Corretor possa ver as métricas geradas a partir do software|


## 5. Requisitos Funcionais

|ID| Requisitos | 
|--|-------------|
|RF01| O sistema deve permitir com que o Corretor possa efetuar cadastro dos imóveis |
|RF02| O sistema deve permitir com que o corretor possa efetuar cadastro de outros corretores|
|RF03| O sistema deve permitir com que o Corretor possa efetuar login |
|RF04| O sistema deve permitir com que o Corretor possa responder as mensagens do cliente pelo chatbot |
|RF05| O sistema deve permitir com que o Corretor veja uma lista de dias para visitas nos imóveis escolhidos pelos usuários |
|RF06| O sistema deve permitir com que o Corretor veja um gráfico com todas as métricas geradas a partir da utilização do usuário |
|RF07| O sistema deve permitir com que o cliente possa visualizar ver todos os imóveis cadastrados no sistema |
|RF08| O sistema deve permitir com que o cliente possa verificar filtrar todos os imóveis agrupando por filtros |
|RF09| O sistema deve permitir com que o cliente agende uma visita a um imóvel |
|RF10| O sistema deve permitir com que o cliente possa enviar uma mensagem para o corretor |
|RF11| O sistema deve permitir com que o cliente possa ver todas as imagens do imóvel|
|RF12| O sistema deve controlar as métricas de acesso dos clientes em relação aos imóveis|
|RF13| O sistema deve permitir que veja a localização do imóvel |
|RF14| O sistema deve permitir que a visualização seja clean com uma UX bem simples|
|RF15| O sistema deve permitir com que as telas sejam responsivas|
|RF16| O sistema deve permitir com que as buscas por imóveis sejam executadas de forma rápida|

## 6. Referências

* SERRANO, Milene. BPMN, 2021. Videoaulas disponibilizadas no moodle da disciplina de Arquitetura e Desenho de Software do curso de Engenharia de Software da UnB, FGA. 


|Data|Versão|Descrição|Autor|
|----|------|---------|-------|
|22/03/2021|1.0|Criação do Documento|Igor Araújo|