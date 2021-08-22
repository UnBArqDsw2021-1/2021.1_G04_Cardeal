# Protótipo

## 1. Objetivo
O objetivo de um protótipo é analisar e testar uma solução de design para um produto antes de sua implementação. A partir de um protótipo, é possível assegurar que o design pretendido funciona como deveria e que os usuários conseguem utilizar o produto.

## 2. Resultados
### 2.1 Protótipo de baixa fidelidade
Foi feito um protótipo de baixa fidelidade para representar a interface do projeto. O protótipo teve como base o [Rich Picture](https://unbarqdsw2021-1.github.io/2021.1_G04_Cardeal/desenhoSoftwareBase/richPicture/) que a equipe elegeu para representar o projeto.

As seguintes telas foram contempladas: 

- Busca por imóveis

- Lista de imóveis buscados

- Cadastro de corretor

- Cadastro de imóvel

- Visualização de um imóvel selecionado


Essas telas possibilitam a execução das seguintes ações:

- Procurar imóveis

- Cadastrar imóveis

- Agendar visita com corretor

- Cadastrar-se como corretor

- Remover imóvel (caso seja um corretor)

- Atualizar imóvel (caso seja um corretor)
 
### Busca por imóveis
À busca por imóveis foi adicionada alguns filtros e a possibilidade de pesquisar propriedade por id.
<img src='../prototipo/buscar-por-imoveis.png'>

### Lista de imóveis buscados
<img src='../prototipo/lista-de-imoveis.png'>

### Cadastro de corretor
Após discutir com os membros da equipe, foi acordado que o CPF do corretor seria utilizado como chave primária no sistema. Essa mudança já está refletida no [Protótipo de Alta Fidelidade]().
<img src='../prototipo/cadastrar-um-corretor.png'>

### Cadastro de imóvel
Foi acordado entre os membros que a chave primária dos imóveis será um ID numérico auto-incrementado. Também será possível pesquisar uma propriedade específica pelo seu id.
<img src='../prototipo/cadastrar-um-imovel.png'>

### Visualização de um imóvel selecionado
Apesar de não explicitado propriamente, o card de imagens permite que o usuário visualize as diferentes fotos do imóvel. Essa mudança já é visível no [Protótipo de Alta Fidelidade]().
<img src='../prototipo/visualizar-um-imovel.png'>

## 3. Versionamento

| Data       | Versão | Descrição                                | Autor             |
| :--------- | :----- | :--------------------------------------- | :---------------- |
| 02/08/2021 | 1.0    | Criação do Documento          | Pedro Haick    |
| 04/08/2021 | 1.1    | Padronização do documento       | Bruno Nunes e Marcos Rodrigues    |
| 20/08/2021 | 2.0 | Correção do Documento Pós-Avaliação | Pedro Haick |

## 4. Referências
[Interactive Design Foundation - Prototyping](https://www.interaction-design.org/literature/topics/prototyping#:~:text=Prototyping%20is%20an%20experimental%20process,can%20release%20the%20right%20products.)