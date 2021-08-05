# Metodologia
## 1. Introdução
Este documento procura expor as metodologias e abordagens utilizadas empregadas durante o processo de desenvolvimento desse projeto. Nele será descrito quais metodologias e métodos foram utilizadas para guiar o desenvolvimento do projeto.

Diversos processos, metodologias e práticas foram apresentadas na disciplina de Arquitetura e Desenho de Software. O grupo Cardeal decidiu utilizar uma metodologia híbrida própria. Seram utilizados aspectos de algumas metodologias, que serão adaptados ao contexto do projeto e das necessidades da equipe. Além disso, o grupo não definiu papéis específicos para cada integrante da equipe. Ao invés disso, haverá uma rotatividade de papéis entre os membros da equipe para que todos possam passar pelo menos uma vez por cada papel, isso permitirá que todos aprendam sobre aspectos desses papéis. Todas as práticas, que geralmente são presenciais, serão feitas de forma remota por conta da pandemia e será utilizado a ferramenta de comunicação Microsoft Teams.

## 2. Metodologias Ágeis
Todas as metodologias utilizadas durante esse projeto são provenientes dos princípios de desenvolvimento ágil de software.
### 2.1 Scrum
Scrum é um método para organização de equipes criado por Schwaber e Sutherland (2017), no qual um grupo de pessoas se organiza para desenvolver soluções para problemas complexos e adaptativos gerando produtos com alto valor para as organizações. O Scrum vem sendo adotado amplamente por equipes de desenvolvimento de software ao redor do mundo, pois sua utilização tem trazido resultados expressivos.

Ela especifica diversas tarefas que devem acontecer durante o processo de desenvolvimento. No contexto do projeto foram adotadas as seguintes atividades: Sprints, Burndown, Sprint Planning, Planning Poker, Sprint Review, Daily Meeting, Weekly Meeting e User Stories.

#### Sprint
A Sprint é o evento concentrador do Scrum, em que todos os outros eventos estão contidos/vinculados. É um período definido, que deve ter no máximo 1 mês de duração, em que uma equipe Scrum se organizará para atingir um objetivo. O início de uma nova Sprint acontece exatamente quando a anterior se encerra, mantendo um ciclo vivo. 

A Sprint será utilizada para gerenciar as deadlines das entregas da equipe, em um determinado timebox.

#### Burndown
Um gráfico de burndown é uma representação gráfica do trabalho a ser feito versus tempo. O trabalho restante (ou backlog) é geralmente no eixo vertical, com o tempo no eixo horizontal. É útil para prever quando todo o trabalho será concluído.

O gráfico Burndown será utilizado para medir a produtividade e desempenho da equipe na realização das tarefas.

#### Sprint Planning
A reunião de planejamento é o marco do início de uma Sprint. Nesta reunião, com a presença do PO, do Scrum Master e do Time de Desenvolvimento, o backlog do produto será avaliado e o time determinará o que pode ser entregue como incremento do produto nessa Sprint e como o trabalho para realizar esta entrega deve ser organizado. 

Sprint Planning será utilizado para planejar a sprint definindo as tarefas que devem ser realizadas em determinada Sprint para o desenvolvimento.
#### Planning Poker
O Planning Poker é uma estratégia usada em projetos ágeis que busca uma estimativa via consenso da equipe. Resumidamente, em um jogo Planning Poker, cada membro da equipe de desenvolvimento recebe um conjunto de cartas com os valores de uma certa sequência, que irá determinar, ao final do jogo, uma estimativa para as fases do Product Backlog.

Vamos usar para modificar ou metrificar o grau de dificuldade de cada tarefa realizada.

#### Weekly Meeting
A Weekly Meeting, deve ocorrer uma vez na semana. Este evento deve ter até 15 minutos de duração e ocorrer no mesmo lugar e horário (trazendo simplicidade). O Scrum Master é responsável por este evento acontecer, mas quem deve conduzi-la é o próprio Time de Desenvolvimento. A weekly é uma adaptação da daily que fizemos para se adequar melhor ao nosso time de desenvolvimento.

A Weekly Meeting será utilizada para reuniões uma vez na semana para analisar como está o desenvolvimento do time.

#### Sprint Review
Na reunião de revisão da Sprint, todo o trabalho concluído durante o período da Sprint será evidenciado pelo time. Participam desta reunião o time e as partes interessadas que são convidadas pelo PO.

Sprint Review será utilizada para fazer uma retrospectiva de tudo que foi feito durante a Sprint visando melhorar o processo com feedbacks do time em relação à sprint anterior.

#### User Stories
User Stories é uma especificação de uma ou mais sentenças na linguagem de negócio ou cotidiana do usuário final ou usuário do sistema que captura o que um usuário faz ou necessita fazer como parte de sua função de trabalho.

User Stories serão utilizados para fragmentar os requisitos e conseguir agrupá-los em features que serão desenvolvidas.

### 2.2 KANBAN
O funcionamento do kanban no desenvolvimento de aplicações está centrado no quadro kanban, permitindo uma visualização de todo o ciclo de trabalho. Um quadro típico do kanban aplicado ao gerenciamento de projetos contém: objetivos, listas de pendências, etapa de desenvolvimento, testes, urgência e concluídos. Por ser uma metodologia flexível, cada departamento pode adaptar os quadros às suas necessidades, criando colunas para alocar cada uma das tarefas do projeto, assim como serão atribuídas aos membros da equipe. 

#### To do
É a coluna onde serão colocadas as tarefas que devem ser feitas.
#### Doing
É a coluna onde serão colocadas as tarefas que estão em desenvolvimento.
#### Done
É a coluna onde serão colocadas as tarefas que foram concluídas.


### 2.3 XP
Criado em 1996, possui como princípios básicos: trabalho de qualidade, mudanças incrementais, feedback rápido e abraçar mudanças. A metodologia possui algumas práticas como Jogos de planejamento, Propriedade coletiva, Teste de usuário, Ritmo sustentável, Equipe inteira, Programação em pares e Padronizações de código.

#### Programação em pares
A programação em pares acontece da seguinte forma: Um desenvolvedor mais experiente fica com um novato, o novato codifica e o mais experiente programa. O benefício deste método é que ele é revisado por duas pessoas.

Vamos usar para minimizar a curva de aprendizado entre os integrantes do time fazendo com que a troca de experiência seja homogênea.

### 2.4 Ferramentas
Essas será as ferramentas utilizadas no desenvolvimento esse projeto:

|Ferramenta|Nome|Utilização|
|----------|-----|---------|
|![GitHub](./tecnologias/github.png)|GitHub| Será Utilizado para fazer a hospedagem do código-fonte e o versionamento do projeto| 
|![Telegram](./tecnologias/telegram.png)|Telegram|Será utilizado para a comunicação entre a equipe e realização da weekly meeting|
|![Zenhub](./tecnologias/zenhub.png) |Zenhub|Será utilizado para aplicar método Kanban no projeto|
|![GoogleDrive](./tecnologias/drive.png)|GoogleDrive|Será utilizado para armazenar alguns documentos pertinentes ao projeto, criados pelos integrantes da equipe|
|![Teams](./tecnologias/teams.png)|Teams | Será utilizado para fazer reuniões de com os integrantes da equipe.|
|![Figma](./tecnologias/figma.png)| Figma | Será utilizado para a criação dos protótipos de baixa fidelidade e alta fidelidade|

 

## 3. Referências Bibliográficas

 > Desenvolvimento ágil de software. https://pt.wikipedia.org/wiki/Desenvolvimento_%C3%A1gil_de_software. Acessado em 03/08/2021

> Maschietto, L. G.; Moraes, D.M.P. D.; Alves, N.S. R.; al., E. Desenvolvimento de Software com Metodologias Ágeis. Disponível em: https://integrada.minhabiblioteca.com.br/#/books/9786556901824/. Acessado em 03/08/2021.

> Gráfico de burndown. https://pt.wikipedia.org/wiki/Gr%C3%A1fico_de_burndown. Acessado em 03/08/2021.

> História de usuário. https://pt.wikipedia.org/wiki/Hist%C3%B3ria_de_usu%C3%A1rio. Acessado em 03/04/2021.

## 4. Versionamento

| Data       | Versão | Descrição                                | Autor             |
| :--------- | :----- | :--------------------------------------- | :---------------- |
| 03/08/2021 | 1.0    | Criação do Documento          | Estevao Reis   Igor Araujo|
| 04/08/2021 | 1.1    | Padronização do documento       | Bruno Nunes e Marcos Rodrigues    |