### **Backlog do produto**

### **1. Introdução**
O Product Backlog, ou Backlog do Produto, é uma lista de funcionalidades desejadas de um produto, lista essa que o Product Owner é responsável por criar. Os requisitos contidos nessa lista são os que um cliente espera receber ao final do projeto, organizados por ordem de prioridade e descritos com sua própria linguagem. O ponto central do desenvolvimento Scrum é a criação do Product Backlog, a partir dele o projeto tem o seu real começo. 

Diferente do modelo tradicional de gestão de projetos, onde precisamos fechar o escopo para poder começar a executar, no Scrum acredita-se que o início do projeto não é o melhor momento para isso. Afinal, nesse ponto ainda não conhecemos suficientemente o projeto e precisamos avançar um pouco mais em algumas hipóteses antes de ter tanta “certeza”.

O Backlog do Produto se mostra como uma parte essencial para especificação e clareamento dos requisitos já elicitados. É bastante importante por trazer uma visão mais transparente do software, assim como de suas funcionalidades. Ele é facilmente entendido pelos stakeholders e é principalmente usado juntamente com metodologias ágeis.

### **2. Objetivo**
Por meio da estruturação dos requisitos e separação dos requisitos de acordo com temas, possibilitamos uma facilitação da visualização das funcionalidades da aplicação para o cliente e os desenvolvedores envolvidos, além de ir um pouco mais além por meio da criação de histórias de usuário e atribuição de pontos a estas, criando assim uma lista de prioridades para o desenvolvimento.

### **3. Tema estratégico**
Criação de uma imobiliária digital que possibilite a compra e aluguel de imóveis.

### **4. Épico**


|**ID**|**Descrição**|
| :- | :- |
|EP1| Sistema de Usuários |
|EP2| Sistemas de Imóveis |
|EP3| Sistema de Busca de Imóveis |
|EP4| Comunicação com Corretores |

### **5. Features**
### **Épico 01 - Sistema de Usuários**


|**ID**|**Descrição**|
| :- | :- |
| F01 | Sistema de CRUD Corretor |
| F02 | Sistema de CRUD Cliente |



### **Épico 02 - Sistemas de Imóveis**


|**ID**|**Descrição**|
| :- | :- |
| F03 | Sistema de CRUD Imóvel |
| F04 | Sistema de CRUD Anúncio |

### **Épico 03 - Sistema de Busca de Imóveis**


|**ID**|**Descrição**|
| :- | :- |
| F05 | Filtragem de Imóveis |
| F06 | Listagem de Imóveis|
| F07 | Listagem dos Imóveis em Destaque |

### **Épico 04 - Comunicação com Corretores**


|**ID**|**Descrição**|
| :- | :- |
| F08 | Filtragem de Corretores|
| F09 | Sistema de Contato Direto com o Corretor |
| F10 | Agendamento de Visitas e Reuniões |

### **6. História de usuário**

|**ID**|**Épico**|**Feature**|**Descrição**|
| :- | :- | :- | :- |
| US01 | EP1 | F01 | Eu, como corretor, gostaria de me cadastrar na plataforma. |
| US02 | EP1 | F01 | Eu, como corretor, gostaria de atualizar meu cadastro na plataforma. |
| US03 | EP1 | F01 | Eu, como corretor, gostaria de apagar meu cadastro na plataforma. |
| US04 | EP1 | F02 | Eu, como corretor, gostaria de cadastrar um cliente. |
| US05 | EP1 | F02 | Eu, como corretor, gostaria de atualizar o cadastro do cliente. |
| US06 | EP1 | F02 | Eu, como corretor, gostaria de deletar um cliente. |
| US07 | EP2 | F03 | Eu, como corretor, gostaria de cadastrar um imóvel. |
| US08 | EP2 | F03 | Eu, como corretor, gostaria de atualizar as informações de um imóvel. |
| US09 | EP2 | F03 | Eu, como corretor, gostaria de deletar um imóvel. |
| US10 | EP2 | F04 |  Eu, como corretor, gostaria de cadastrar o anúncio de um imóvel na plataforma. |
| US11 | EP2 | F04 | Eu, como corretor, gostaria de atualizar o anúncio de um imóvel na plataforma. |
| US12 | EP2 | F04 | Eu, como corretor, gostaria de apagar o anúncio de um imóvel na plataforma. |
| US13 | EP2 | F04 |  Eu, como usuário(cliente e/ou corretor), gostaria de compartilhar o anúncio de um imóvel para alguma rede social. |
| US14 | EP3 | F05 | Eu, como usuário(corretor e/ou cliente), gostaria de filtrar imóveis por categorias. |
| US15 | EP3 | F05 | Eu, como usuário(corretor e/ou cliente), gostaria de filtrar imóveis por localidade. |
| US16 | EP3 | F06 | Eu , como usuário(corretor e/ou cliente), gostaria de reorganizar a lista de imóveis pelo preço do imóvel. |
| US17 | EP3 | F06 | Eu, como usuário(corretor e/ou cliente), gostaria de reorganizar a lista de imóveis pelo tamanho do imóvel. |
| US18 | EP3 | F07 | Eu, como usuário(corretor e/ou cliente), gostaria de visualizar lista de imóveis em destaque por preço do imóvel. |
| US19 | EP3 | F07 | Eu, como usuário(corretor e/ou cliente), gostaria de visualizar lista de imóveis em destaque pelo tamanho do imóvel. |
| US20 | EP4 | F08 | Eu, como cliente, gostaria de ver uma lista com todos os corretores. |
| US21 | EP4 | F08 | Eu, como cliente, gostaria de filtrar os corretores por nome. |
| US22 | EP4 | F08 | Eu, como cliente, gostaria de filtrar os corretores por localização. |
| US23 | EP4 | F09 | Eu, como cliente, gostaria de mandar um e-mail para o corretor dentro da plataforma. |
| US24 | EP4 | F09 | Eu, como cliente, gostaria de visualizar os contatos do corretor. |
| US25 | EP4 | F10 | Eu, como corretor, gostaria de agendar uma visita para o cliente. |
| US26 | EP4 | F10 | Eu, como corretor, gostaria de agendar uma reunião para o cliente. |
| US27 | EP4 | F10 | Eu, como corretor, gostaria de visualizar os agendamentos cadastrados. |

### 7. Versionamento

| Data       | Versão | Descrição                                | Autor             |
| :--------- | :----- | :--------------------------------------- | :---------------- |
| 21/08/2021 | 1.0    | Criação do Documento          | Luiz Gustavo Dias Paes Pinheiro|
| 21/08/2021 | 1.1    | Revisão do Documento          | Pedro Haick |
| 08/09/2021 | 1.2    | Atualização do Backlog do Produto          | Douglas Castro |

### 8. Referências Bibliográficas

 > Lesson 1: Create the product backlog. https://www.ibm.com/docs/en/elm/7.0.2?topic=project-lesson-1-create-product-backlog. Acessado em 19/08/2021.
 
 > What is a Product Backlog? https://www.scrum.org/resources/what-is-a-product-backlog. Acessado em 20/08/2021.