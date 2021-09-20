# Diagramas de Atividade

## 1. Introdução

<p align="justify">
Lançado em 1997 pela OMG(Object Management Group), a <i>Unified Modeling Language</i>(UML) padronizou e unificou as notações de modelagem usadas pelos profissionais de tecnologia da informação. A linguagem fornece uma grande quantidade de ferramentas que são usadas para modelar projetos e sistemas (BELL, 2003).
</p> 

<p align="justify">
Os diagramas fornecidos pela UML podem ser divididos em dois conjuntos: o conjunto dos Diagramas Estáticos ou Estruturais e o conjunto dos Diagramas Dinâmicos ou Comportamentais. Os Diagramas Dinâmicos são aqueles que descrevem os aspectos comportamentais de um sistema, ou seja, eles modelam as partes que sofrem alterações durante a utilização do sistema(SILVA, 2015). Podemos citar como Diagrama Dinâmicos o:
</p>

* Diagrama de Atividade
* Diagrama de Sequência
* Diagrama de Comunicação
* Diagrama de Estado


<p align="justify">
O Diagrama de Atividade, foco dessa documentação, é aquele que vai fornecer uma visualização do comportamento de um sistema, descrevendo a sequência de ações dentro de um processo. Eles são semelhantes aos fluxogramas e mostram os fluxos de atividade de um projeto. São usados não apenas nas fases iniciais descrevendo os trabalhos mais importantes, como também pode ser usado para descrever os fluxos de eventos de um caso de uso na fase requisitos e/ou modelando comportamentos das operações nas fases de análise e design.
</p>

## 2. Metodologia

<p align="justify">
  Para a modelagem dos diagramas de atividade, foram usado os casos de uso Editar Imóvel, Apagar Imóvel e Visualizar Imóvel, descritos na documentação de <a href="https://unbarqdsw2021-1.github.io/2021.1_G04_Cardeal/modelagem/diagrama_casos_de_uso/">Diagramas de Casos de Uso</a>. 
</p>

<p align="justify">
  Também foi usado como insumo para essa modelagem os requisitos Cadastrar Corretor e Agendar Visita. Estes podem ser visualizados no <a href="https://unbarqdsw2021-1.github.io/2021.1_G04_Cardeal/modelagem/backlog_do_produto/">Backlog do Produto</a>.
</p>

Para a modelagem foi usada a ferramenta [Draw.io](https://draw.io).

## 3. Resultados

### 3.1. Cadastrar Corretor
<p align="justify">
  Nesse diagrama podemos visualizar o comportamento dessa operação nas partes importantes da aplicação. Antes de efetuar a requisição para cadastrar o usuário, o frontend faz uma validação inicial dos dados para só assim fazer a requisição que cadastra o corretor, deixando para o backend outras validações que precisarão do banco de dados.
</p>

![Cadastrar Corretor](./diagramas_de_atividade/cadastrar_corretor.svg)
<p align = "center"><i>Autor: Douglas Castro</i></p>

### 3.2. Visualizar Imóvel
<p align="justify">
  Nesse diagrama podemos visualizar o comportamento das partes da aplicação quando o usuário faz buscas para visualizar um determinado imóvel. Se a aplicação não encontrar imóveis que estejam de acordo com os filtros escolhidos pelo cliente, espera-se que seja exibido para o usuário uma mensagem dizendo que "Não foram encontrado imóveis".
</p>

![Buscar Imóvel](./diagramas_de_atividade/buscar_imóvel.svg)
<p align = "center"><i>Autor: Douglas Castro</i></p>


### 3.3. Editar Imóvel
<p align="justify">
  Nesse diagrama o fluxo apresentado é o de edição de imóvel e apenas corretores poderão fazer essa operação. A partir de uma lista de imóveis da imobiliária, o corretor seleciona o imóvel que ele deseja editar. Ao final da operação, espera-se que o corretor visualize o imóvel com os novos dados.
</p>

![Editar Imóvel](./diagramas_de_atividade/editar_imóvel.svg)
<p align = "center"><i>Autor: Douglas Castro</i></p>

### 3.4. Apagar Imóvel

<p align="justify">
  O fluxo de atividade descrito nesse diagrama tem como objetivo apagar um determinado imóvel. Essa também é uma operação que apenas o corretor pode fazer. Ao escolher um determinado imóvel para ser excluido, espera-se que a aplicação confirme com o corretor se ele tem certeza da operação escolhida. Caso desista da operação, o corretor será redirecionado para a página de imóveis cadastrados.
</p>

![Apagar Imóvel](./diagramas_de_atividade/apagar_imovel.svg)
<p align = "center"><i>Autor: Douglas Castro</i></p>

### 3.5. Agendar Visita

<p align="justify">
  Nesse último diagrama, é descrito os fluxos para se agendar uma reunião com o corretor. Essa é uma atividade que poderá ser feita apenas entre o cliente e o chatbot, onde será solicitado os dados do cliente para uma possível reunião. Porém, também existe a opção "Conversar com o corretor", que se escolhida, o cliente é direcionado para uma conversa com o corretor.
</p>

![Agendar Visita](./diagramas_de_atividade/agendar_visitar.svg)
<p align = "center"><i>Autor: Douglas Castro</i></p>

## 4. Versionamento

| Data | Versão | Descrição | Autor |
| :--: | :--: | -- | :--: |
| 18/08/2021 | 1.0 | Criação do documento | Douglas Castro |
| 19/08/2021 | 1.1 | Adição do diagrama Cadastrar Corretor | Douglas Castro |
| 19/08/2021 | 1.2 | Adição do diagrama Criar Imóvel | Douglas Castro |
| 19/08/2021 | 1.3 | Adição do diagrama Visualizar Imóvel | Douglas Castro |
| 20/08/2021 | 1.4 | Adição do diagrama Editar Imóvel | Douglas Castro |
| 20/08/2021 | 1.5 | Adição do diagrama Apagar Imóvel | Douglas Castro |
| 20/08/2021 | 1.6 | Adição do diagrama Agendar Visita | Douglas Castro |
| 20/08/2021 | 1.7 | Adição da Introdução, Metodologia, Resultados e Referências | Douglas Castro |
| 21/08/2021 | 1.8 | Revisão e Padronização do Documento | Pedro Haick |

## 5. Referências

* BELL, Donald. An introduction to the Unified Modeling Language. Disponível em: <a target="_blank" href="https://developer.ibm.com/articles/an-introduction-to-uml/">https://developer.ibm.com/articles/an-introduction-to-uml/</a>. Acesso em: 18 de Agosto de 2021.

* IBM. Diagramas de Atividades. Disponível em: <a target="_blank" href="https://www.ibm.com/docs/pt-br/rsm/7.5.0?topic=diagrams-activity">https://www.ibm.com/docs/pt-br/rsm/7.5.0?topic=diagrams-activity</a>. Acesso em: 18 de Agosto de 2021.
  
* Activity Diagrams. Disponível em: <a target="_blank" href="https://www.uml-diagrams.org/activity-diagrams.html">https://www.uml-diagrams.org/activity-diagrams.html</a>. Acesso em: 18 de Agosto de 2021.
  
* SILVA, Flávio. UML - Diagramas. Disponível em: <a target="_blank" href="http://www.facom.ufu.br/~flavio/swmod-files/files/2015-02/07-UML-Diagramas-Caso-de-Uso.pdf">http://www.facom.ufu.br/~flavio/swmod-files/files/2015-02/07-UML-Diagramas-Caso-de-Uso.pdf</a>. Acesso em: 19 de Agosto de 2021.
  
* Canal no youtube: Udacity. Activity Diagram. Disponível em: <a target="_blank" href="https://www.youtube.com/watch?v=vSjG-B8Ili8">https://www.youtube.com/watch?v=vSjG-B8Ili8</a>. Acesso em: 20 de Agosto de 2021.
  
* Canal no youtube: Udacity. Example Activity Diagram. Disponível em: <a target="_blank" href="https://www.youtube.com/watch?v=qeWrvNFX-cY">https://www.youtube.com/watch?v=qeWrvNFX-cY</a>. Acesso em: 20 de Agosto de 2021.