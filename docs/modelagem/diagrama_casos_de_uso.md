# Diagrama de Casos de Uso

## 1. Introdução
Diagramas de Caso de Uso são diagramas construídos através da notação UML (Unified Modeling Language) e que documentam as principais funcionalidades de um sistema e a forma com que os usuários interagem com elas (Leandro Ribeiro, 2012). Nestes diagramas, é dada uma visão geral do escopo do sistema, captando o comportamento que o projeto visa alcançar, mas sem fornecer grandes detalhes sobre implementações (Fábio dos Reis, 2019).  
Segundo Leandro Ribeiro, um diagrama de Casos de Uso pode ser composto em:  

*   Cenário, que é a sequência de eventos decorrentes da interação de um usuário com o sistema;
*   Atores, que são os tipos de usuário do sistema;
*   Casos de Uso, que são as funcionalidades que serão realizadas pelos autores;
*   e a Comunicação, que liga os atores aos casos de uso. 

## 2. Metodologia
Consumimos os requisitos importantes para a aplicação para modelar o sistema através dos diagramas de Casos de Uso(UC), usando a ferramenta [Draw.io](https://draw.io) para desenhá-los. Utilizamos a notação UML através dos símbolos já contidos na ferramenta utilizada.

## 3. Resultados 
### 3.1 Caso de Uso: Cadastrar Imóvel
#### 3.1.1 Diagrama
[![img](https://i.ibb.co/5WWjnX3/diagrama-casos-de-uso-Cadastrar-Im-vel.png)](https://i.ibb.co/5WWjnX3/diagrama-casos-de-uso-Cadastrar-Im-vel.png)
<center>_Autores: Douglas Castro e Giovana Dionisio_</center> 

#### 3.1.2 Especificação
<table>
  <tbody>
    <tr>
      <td><b>Nome do Caso de Uso</b></td>
      <td>Cadastrar imóvel</td>
    </tr>
    <tr>
      <td><b>Ator</b></td>
      <td>Corretor</td>
    </tr>
    <tr>
      <td><b>Descrição</b></td>
      <td>Esse caso de uso ocorre quando um corretor deseja cadastrar um imóvel</td>
    </tr>
    <tr>
      <td><b>Condições prévias</b></td>
      <td>O corretor deve ter efetuado o login</td>
    </tr>
    <tr>
      <td><b>Fluxo Básico</b></td>
      <td>
        1. O corretor acessa a área de cadastro de imóvel</br>
        2. O sistema apresenta um formulário de cadastro de imóvel contendo as informações:</br>
        &nbsp;&nbsp;&nbsp;&nbsp;- Nome</br>
        &nbsp;&nbsp;&nbsp;&nbsp;- Endereço</br>
        &nbsp;&nbsp;&nbsp;&nbsp;- Cidade</br>
        &nbsp;&nbsp;&nbsp;&nbsp;- Descrição</br>
        &nbsp;&nbsp;&nbsp;&nbsp;- Valor</br>
        &nbsp;&nbsp;&nbsp;&nbsp;- CPF do dono</br>
        &nbsp;&nbsp;&nbsp;&nbsp;- Tipo</br>
        &nbsp;&nbsp;&nbsp;&nbsp;- Localização</br>
        &nbsp;&nbsp;&nbsp;&nbsp;- Mídias(fotos e/ou vídeos)</br>
        1. O corretor clica em 'Cadastrar'</br>
        2. O corretor é direcionado para a página do imóvel que foi cadastrado
      </td>
    </tr>
    <tr>
      <td><b>Fluxos Alternativos</b></td>
      <td>
        Não possui
      </td>
    </tr>
    <tr>
      <td><b>Pós condição</b></td>
      <td>Quando esse caso de uso for concluído, o imóvel estará disponível para pesquisas</td>
    </tr>
  </tbody>
</table>

### 3.2 Caso de Uso: Editar Imóvel
#### 3.2.1 Diagrama
[![img](https://i.ibb.co/NxcP83B/diagrama-casos-de-uso-Editar-Im-vel.png)](https://i.ibb.co/NxcP83B/diagrama-casos-de-uso-Editar-Im-vel.png)
<center>_Autores: Douglas Castro e Giovana Dionisio_</center> 

#### 3.2.2 Especificação
<table>
  <tbody>
    <tr>
      <td><b>Nome do Caso de Uso</b></td>
      <td>Editar Imóvel</td>
    </tr>
    <tr>
      <td><b>Descrição</b></td>
      <td>Esse caso de uso ocorre quando um corretor deseja alterar as informações de um determinado imóvel</td>
    </tr>
    <tr>
      <td><b>Ator</b></td>
      <td>Corretor</td>
    </tr>
    <tr>
      <td><b>Condições prévias</b></td>
      <td>O corretor deve ter efetuado o login</td>
    </tr>
    <tr>
      <td><b>Fluxo Básico</b></td>
      <td>
          1. O sistema apresenta lista de imóveis cadastrados</br>
          2. O corretor seleciona o imóvel para editar</br>
          3. O corretor edita as informações pertinentes</br>
          4. O corretor clica em 'Atualizar'</br>
          5. O corretor é redirecionado para a página do imóvel que foi selecionado
      </td>
    </tr>
    <tr>
      <td><b>Fluxos Alternativos</b></td>
      <td>
        1. Cancelar edição</br>
           &nbsp;&nbsp;&nbsp;&nbsp;1. O corretor clica em 'Cancelar'</br>
           &nbsp;&nbsp;&nbsp;&nbsp;2. O corretor é redirecionado para a página inicial
      </td>
    </tr>
    <tr>
      <td><b>Pós condição</b></td>
      <td>Quando esse caso de uso for concluído, as novas informações do imóvel estarão disponíveis</td>
    </tr>
  </tbody>
</table>

### 3.3 Caso de Uso: Deletar Imóvel
#### 3.3.1 Diagrama
[![img](https://i.ibb.co/MNKH55S/diagrama-casos-de-uso-Deletar-Im-vel.png)](https://i.ibb.co/MNKH55S/diagrama-casos-de-uso-Deletar-Im-vel.png)  
<center>_Autores: Douglas Castro e Giovana Dionisio_</center>  

#### 3.3.2 Especificação
<table>
  <tbody>
    <tr>
      <td><b>Nome do Caso de Uso</b></td>
      <td>Deletar Imóvel</td>
    </tr>
    <tr>
      <td><b>Descrição</b></td>
      <td>
        Esse caso de uso permite ao corretor deletar um imóvel
      </td>
    </tr>
    <tr>
      <td><b>Ator</b></td>
      <td>Corretor</td>
    </tr>
    <tr>
      <td><b>Condições prévias</b></td>
      <td>O corretor deve ter efetuado o login</td>
    </tr>
    <tr>
      <td><b>Fluxo Básico</b></td>
      <td>
          1. O sistema apresenta uma lista de imóveis cadastrados</br>
          2. O corretor seleciona o imóvel para deletar</br>
          3. O corretor clica em 'Deletar'</br>
          4. O corretor confirma que realmente quer deletar o imóvel</br>
          5. O corretor é redirecionado para a página inicial</br>
      </td>
    </tr>
    <tr>
      <td><b>Fluxos Alternativos</b></td>
      <td>
        1. Cancelar deleção</br>
           &nbsp;&nbsp;&nbsp;&nbsp;1. O corretor clica em 'Cancelar'</br>
           &nbsp;&nbsp;&nbsp;&nbsp;2. O corretor é redirecionado para a página inicial
      </td>
    </tr>
    <tr>
      <td><b>Pós condição</b></td>
      <td>
        Quando esse caso de uso for concluído o imóvel selecionado pelo corretor estará excluído
      </td>
    </tr>
  </tbody>
</table>

### 3.4 Caso de Uso: Visualizar Imóveis
#### 3.4.1 Diagrama
[![img](https://i.ibb.co/4Mtsr2d/diagrama-casos-de-uso-Visualizar-Im-vel.png)](https://i.ibb.co/4Mtsr2d/diagrama-casos-de-uso-Visualizar-Im-vel.png)
<center>_Autores: Douglas Castro e Giovana Dionisio_</center> 

#### 3.4.2 Especificação
<table>
  <tbody>
    <tr>
      <td><b>Nome do Caso de Uso</b></td>
      <td>Visualizar imóveis</td>
    </tr>
    <tr>
      <td><b>Descrição</b></td>
      <td>
        Esse caso de uso permite aos usuários visualizar os imóveis cadastrados no sistema
      </td>
    </tr>
    <tr>
      <td><b>Ator</b></td>
      <td>Usuários (Clientes e Corretor)</td>
    </tr>
    <tr>
      <td><b>Condições Prévias</b></td>
      <td>
        Não possui
      </td>
    </tr>
    <tr>
      <td><b>Fluxo Básico</b></td>
      <td>
        1. O sistema apresenta uma lista de imóveis cadastrados</br>
        2. O usuário pode filtrar os imóveis por nome, localidade e valor</br>
        3. O usuário pode selecionar um imóvel</br>
        4. O usuário visualiza detalhes do imóvel, sua localização, suas mídias e contatos da imobiliária
      </td>
    </tr>
    <tr>
      <td><b>Fluxos Alternativos</b></td>
      <td>
        Não possui
      </td>
    </tr>
    <tr>
      <td><b>Pós condição</b></td>
      <td>
        Quando esse caso de uso for concluído o usuário terá visualizado os detalhes de um imóvel
      </td>
    </tr>
  </tbody>
</table>

## 4. Referências
DOS REIS, Fábio. Bóson Treinamentos. Curso de UML - O que são Casos de Uso. Youtube, 2019. Disponível em: <https://www.youtube.com/watch?v=ePX-S4Leq7Y>. Acesso em: 19/08/2021.

DOS REIS, Fábio. Bóson Treinamentos. Curso de UML - O que são Diagramas de Casos de Uso. Youtube, 2019. Disponível em: <https://www.youtube.com/watch?v=K-BaRfFx0mA>. Acesso em: 19/08/2021.

IBM. Estrutura de Tópicos da Especificação de Caso de Uso. Disponível em: <https://www.ibm.com/docs/pt-br/elm/6.0?topic=cases-use-case-specification-outline>. Acesso em: 19/08/2021

LUCIDCHART. Diagrama de caso de uso UML: O que é, como fazer e exemplos. Disponível em: <https://www.lucidchart.com/pages/pt/diagrama-de-caso-de-uso-uml>. Acesso em: 18/08/2021.

RIBEIRO, Leandro. O que é UML e Diagramas de Caso de Uso: Introdução Prática à UML. DevMedia, 2012. Disponível em: <https://www.devmedia.com.br/o-que-e-uml-e-diagramas-de-caso-de-uso-introducao-pratica-a-uml/23408> Acesso em: 19/08/2021.

UFPE. Artefato: casos de uso. Disponível em: <https://www.cin.ufpe.br/~gta/rup-vc/core.base_rup/workproducts/rup_usecase_A5D30E62.html>. Acesso em: 19/08/2021

VENTURA, Plínio. Caso de Uso – Include, Extend e Generalização. Até o Momento, 2014. Disponível em: <https://www.ateomomento.com.br/caso-de-uso-include-extend-e-generalizacao/>. Acesso em: 19/08/2021.

VIEIRA, Rodrigo. UML — Diagrama de Casos de Uso. Medium, 2015. Disponível em: <https://medium.com/operacionalti/uml-diagrama-de-casos-de-uso-29f4358ce4d5>. Acesso em: 19/08/2021.

## 5. Versionamento

| Versão | Data | <b>Objetivo</b> | Autores |
| :--: | :--: | -- | :--: |
| 0.1 | 18/08/2021 | Criação do documento | Douglas Castro e Giovana Dionísio |
| 0.2 | 19/08/2021 | Adição do diagrama e introdução | Douglas Castro e Giovana Dionísio |
| 0.3 | 19/08/2021 | Adição da Metodologia e mudanças no diagrama | Douglas Castro e Giovana Dionísio |
| 0.4 | 19/08/2021 | Adição da especificação do UC Cadastrar Imóvel | Douglas Castro e Giovana Dionísio |
| 0.5 | 19/08/2021 | Adição da especificação do UC Editar Imóvel | Douglas Castro e Giovana Dionísio |
| 0.6 | 19/08/2021 | Adição da especificação do UC Deletar Imóvel | Douglas Castro e Giovana Dionísio |
| 0.7 | 19/08/2021 | Adição da especificação do UC Visualizar Imóveis | Douglas Castro e Giovana Dionísio |
| 1.0 | 19/08/2021 | Adição dos diagramas | Douglas Castro e Giovana Dionísio |