# GoFs Estruturais

## 1. Introdução
## 2. Adapter 
## 3. Composite 
## 4. Bridge 
## 5. Decorator 
## 6. Facade 
## 7. Flyweight 
## 8. Proxy 

## 8.1. Introdução

O padrão de projeto estrutural Proxy, é um padrão de projeto no qual uma classe irá funcionar de interface para outra coisa. Sendo assim, o Proxy pode fazer interface com praticamente qualquer coisa, desde uma conexão de rede a um arquivo.

## 8.2. Metodologia

 O padrão Proxy foi estudado, porém não está implementado de maneira direta no projeto. Mas se sim, a sua implementação seguiria o seu padrão característico descrito na introdução de modo a preservar e ser possível indentífica-lo de maneira clara no projeto.

## 8.3. Estrutura

A abordagem do Proxy é feita do seguinte modo e seguindo os seguintes parametros, o Proxy é um objeto wrappe que está sendo chamado pelo cliente para acessar o objeto de serviço real. Ao se chamar o Proxy, pode se encaminhar direto para o uso do serviço real ou oferecer uma lógica adicional, complementar aquele objeto, antes de propriamente encaminhar para ele, podendo fornecer um substituto ( ou placeholder ), adiciona nível estra de indireção e adicionar um agregador para proteger o componente real de complexidade indevida. 

![ilustracao-utilizacao-proxy](https://user-images.githubusercontent.com/82710878/133911984-fe0ee114-3a83-4a03-8a7d-28dc27c3ad4c.png)

Fonte: https://pt.wikipedia.org/wiki/Prototype#Estrutura

## 8.4. Proxy aplicado ao projeto

O padrão proxy não foi aplicado ao projeto.

## 9. Referências

> Padrões de Projeto Proxy. Disponível em: https://pt.wikipedia.org/wiki/Proxy_(padr%C3%B5es_de_projeto)#:~:text=Em%20programa%C3%A7%C3%A3o%20de%20computadores%2C%20o,uma%20interface%20para%20outra%20coisa.&text=O%20uso%20do%20proxy%20pode,ou%20pode%20fornecer%20l%C3%B3gica%20adicional.  Acessado em: 18/09/2021
> Padrões de Projeto Proxy. Disponível em: https://refactoring.guru/pt-br/design-patterns/proxy/java/example.  Acessado em: 18/09/2021

## 10. Versionamento 

| Data       | Versão | Descrição         | Autores       | 
| ---------- | ------ | ----------------- | ------------- | 
| 30/08/2021 | 0.1    | Criação do arquivo| Estevao Reis  |
| 17/09/2021 | 0.2    | Estruturação do Arquivo| Estevao Reis |
| 19/09/2021 | 1.2    | Adição do Padrão Proxy| Luiz Gustavo  |              |
