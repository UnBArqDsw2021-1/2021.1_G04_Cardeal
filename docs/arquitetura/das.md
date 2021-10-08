# DAS - Documento de Arquitetura de Software
## 1. Introdução

## 2. Representação Arquitetural

## 3. Metas Arquiteturais e Restrições

Os objetivos arquiteturais dizem respeito e trabalham em cima das metas mais significativas e das metas que foram impostas para tal projeto sendo assim, basicamente se trata que satisfaz as expectativas, desejos e necessidades dos Stakeholders do projeto. As restrições arquitetônicas de um projeto são definidas como condições que são impostas ao sistema e limitam a execução desse mesmo, tendo estas que serem cumpridas da maneira correta, para que este funcione de acordo com o esperado. 

### 3.1 Objetivos 
O que é referente às restrições, requisitos e objetivos da arquitetura do site online da corretora Cardeal, serão listados abaixo os pontos de maior importância para o projeto:
Segurança: A aplicação deve manter os dados dos usuários em segurança
Linguagem: A aplicação deve conter uma linguagem acessível e que possa ter um fácil entendimento pelo os usuários
Portabilidade: A aplicação deve ser funcionar e ser executada com desempenho igual ou próximo nos navegadores Google Chrome, Mozilla Firefox e Microsoft Edge
Usabilidade: é essencial que o sistema possibilite que o usuário a realize ações rapidamente e de maneira intuitiva
Escalabilidade: O software deve tornar possível sua evolução e manutenção.
Manutenibilidade: A aplicação deve permitir manutenção e melhorias de maneira a não gerar custo e tempo muito acima do normal.

### 3.2 Restrições
- Tecnologias: O desenvolvimento da plataforma deve seguir o planejamento a as tecnologias definidas pela equipe
- Conectividade: Conexão com a internet para que o usuário acesse ao site
- Prazo: A aplicação deverá ser finalizada dentro da data estipulada para entrega final do projeto
- Idioma: O site deve estar na linguagem Português-Brasil.
- Público alvo: A aplicação deve atender usuários que desejam os serviços do site da corretora Cardeal.


## 4. Visão de caso de uso

## 5. Visão Lógica

## 6. Visão de Processos

## 7.Visão de Implantação

&emsp;&emsp;Essa visão busca explorar e avaliar as opções arquiterurais de alto nível. Ela irá promover um entendimento da estrutura para os patrocinadores e demais stakeholder. Para isso, precisa levar em consideração o design das redes preexistentes e os bancos de dados preexistentes. A fim de descreve como o sistema é mapeado para o hardware (MONTEIRO, 2010).

&emsp;&emsp; Os dados da aplicação Web ficam armazenados no banco de dados MySQL. As requisições são feitas pelo front-end, implementado com auxilio do Angular, para o back-end, implementado com o NestJS. Este e aquele construídos com a linguagem TypeScript.

&emsp;&emsp; A partir dessas requisições, o back-end realiza os serviços solicitados, fazendo buscas e/ou serviços no banco de dados, e responde ao front-end, que por sua vez apresenta todas as informações necessárias ao usuário. Essa visão pode ser representada utilizando o seguinte diagrama:

![Implantação](./img/implantacao.jpg)

<center>*Autor: Douglas Castro*</center>

## 8. Visão de Implementação

## 9. Visão de Dados

## 10. Tamanho e Desempenho 

O tamanho do projeto, foi estimado em xMb. Esse valor foi alcançado e mensurado levando em consideração o Back-end e Front-end do site da corretora Cardeal.

Em relação à performance, o sistema foi desenvolvido com foco na otimização de resposta às requisições. Sendo assim, é esperado que o desempenho geral do sistema atenda às expectativas e à testes de Stress. Sendo capaz de: 
- O sistema deve ser capaz de suportar x usuários simultâneos em seu site
- O sistema deve ser capaz de carregar suas páginas em menos de 10 segundos 


## 11. Qualidade

## 12. Referências

- Arquitetura de Software. MONTEIRO, Marcos. Disponível em: https://www.marcosmonteiro.com.br/mm/Cursos/Arquitetura_Software/Arquitetura_de_Software-marcosmonteiro.pdf. Acesso: 30/09/2021

- Como documentar a Arquitetura de Software. Disponível em: http://www.linhadecodigo.com.br/artigo/3343/como-documentar-a-arquitetura-de-software.aspx. Acesso em: 30/09/2021

## Versionamento
| Data       | Versão | Descrição         | Autores       |
| ---------- | ------ | ----------------- | ------------- |
| 24/09/2021 | 0.1 | Criação do arquivo| Estevao Reis  |
| 27/09/2021 | 0.2 | Estruturação dos tópicos do documento| Estevao Reis |
| 05/10/2021 | 0.3 | Criação inicial dos tópicos 3 e 10| Luiz Gustavo  |
| 08/10/2021 | 0.4 | Adição da visão de Implantação| Douglas Castro  |
