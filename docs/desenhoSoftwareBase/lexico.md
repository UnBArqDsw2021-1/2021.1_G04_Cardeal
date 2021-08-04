# Léxico

## Introdução
Léxico consiste em uma técnica de descrição de símbolos de uma linguagem através da notação LAL (Léxico Ampliado da Linguagem). O objetivo do seu uso é a expressão do vocabulário do universo cognitivo de um problema sem que o problema seja levado em conta, mas sim o seu contexto. Desta forma, é possível a identificação de palavras, frases e termos que sejam peculiares ao domínio de uma aplicação.  
No Léxico Ampliado da Linguagem, cada expressão é descrita em **noção** e **impacto**. A noção está ligada ao significado do termo, enquanto o impacto se refere ao efeito que este termo causa dentro do contexto da aplicação. Além disso, são apresentados (quando existentes) os sinônimos para o léxico e a sua classificação em Objeto, Verbo, Sujeito ou Estado.

## Metodologia
Para a construção do artefato de léxicos do projeto Cardeal, seguiram-se duas etapas para a coleta de dados: a identificação de símbolos da linguagem, onde foram levantadas frases e termos significantes dentro do contexto de uma imobiliária, e a identificação da semântica, onde os termos levantados foram analisados e descritos.   
Para a apresentação dos símbolos, listados em ordem alfabética, foi utilizado o seguinte modelo: 

**Código - Símbolo**  

| Classificação | Noção | Impacto | Sinônimos |
| ------------- | ----- | ------- | --------- |
| Objeto / Verbo / Sujeito / Estado | Denotação | Conotação | (Opcional) |

## Léxicos
### L1 - Aluguel
| Classificação | Noção | Impacto | Sinônimos |
| ------------- | ----- | ------- | --------- |
| Objeto | [Negócio](#l15-negocio) em que o proprietário do [imóvel](#l10-imovel) cede o uso deste para um locador mediante pagamento mensal | A [imobiliária](#l9-imobiliaria) intermedia o aluguel entre [locatário](#l13-locatario) e [locador](#l11-locador) | Locação |

### L2 - Anunciar
| Classificação | Noção | Impacto | Sinônimos |
| ------------- | ----- | ------- | --------- |
| Verbo | Disponibilizar um [imóvel](#l10-imovel) para [negócio](#l15-negocio) | A [imobiliária](#l9-imobiliaria) anuncia [imóveis](#l10-imovel) | Publicar |

### L3 - Apartamento
| Classificação | Noção | Impacto | Sinônimos |
| ------------- | ----- | ------- | --------- |
| Objeto | [Imóvel](#l10-imovel) residêncial localizado em um prédio | Um [imóvel](#l10-imovel) pode ser classificado como um apartamento |  |

### L4 - Área
| Classificação | Noção | Impacto | Sinônimos |
| ------------- | ----- | ------- | --------- |
| Objeto | Tamanho, geralmente em m², do [imóvel](#l10-imovel) | Área é uma das características de um [imóvel](#l10-imovel) | Metragem |

### L5 - Casa 
| Classificação | Noção | Impacto | Sinônimos |
| ------------- | ----- | ------- | --------- |
| Objeto | [Imóvel](#l10-imovel) residencial localizado em um terreno | Um [imóvel](#l10-imovel) pode ser classificado como uma casa | Sobrado |

### L6 - Comprador
| Classificação | Noção | Impacto | Sinônimos |
| ------------- | ----- | ------- | --------- |
| Sujeito | Cliente que realiza [negócio](#l15-negocio) de compra | Um comprador compra um [imóvel](#l10-imovel) |  |

### L7 - Corretor
| Classificação | Noção | Impacto | Sinônimos |
| ------------- | ----- | ------- | --------- |
| Sujeito | Funcionário da [imobiliária](#l9-imobiliaria) responsável em realizar o [negócio](#l15-negocio) entre clientes e proprietários de [imóveis](#l10-imovel) | Um anúncio é realizado por um corretor; Um [negócio](#l15-negocio) é intermediado por um corretor |  |

### L8 - Entrar em contato
| Classificação | Noção | Impacto | Sinônimos |
| ------------- | ----- | ------- | --------- |
| Verbo | Ação do cliente em se comunicar com um funcionário da [imobiliária](#l9-imobiliaria) | Ao entrar em contato com um [corretor](#l7-corretor), o cliente se comunica por mensagem, ligação ou email, solicitando alguma informação | Contatar |

### L9 - Imobiliária
| Classificação | Noção | Impacto | Sinônimos |
| ------------- | ----- | ------- | --------- |
| Objeto | Empresa responsável pela [venda](#l19-venda) ou [aluguel](#l1-aluguel) de [imóveis](#l10-imovel) | Os [corretores](#l7-corretor) trabalham para a imobiliária |  |

### L10 - Imóvel
| Classificação | Noção | Impacto | Sinônimos |
| ------------- | ----- | ------- | --------- |
| Objeto | Propriedade física, edificação pertencente a um proprietário | Imóveis são [negociados](#l15-negocio) através das [imobiliárias](#l9-imobiliaria) |  |

### L11 - Locador
| Classificação | Noção | Impacto | Sinônimos |
| ------------- | ----- | ------- | --------- |
| Sujeito | Cliente que realiza [negócio](#l15-negocio) de [aluguel](#l1-aluguel) | Um locador aluga um [imóvel](#l10-imovel) |  |

### L12 - Localização
| Classificação | Noção | Impacto | Sinônimos |
| ------------- | ----- | ------- | --------- |
| Objeto | Lugar em que um [imóvel](#l10-imovel) se encontra | Localização é uma das características de um [imóvel](#l10-imovel) | Endereço |

### L13 - Locatário
| Classificação | Noção | Impacto | Sinônimos |
| ------------- | ----- | ------- | --------- |
| Sujeito | Proprietário que realiza [negócio](#l15-negocio) de [aluguel](#l1-aluguel) | Um locatário aluga seu [imóvel](#l10-imovel) para um [locador](#l11-locador) |  |

### L14 - Loja
| Classificação | Noção | Impacto | Sinônimos |
| ------------- | ----- | ------- | --------- |
| Objeto | [Imóvel](#l10-imovel) destinado para fins comerciais | Um [imóvel](#l10-imovel) pode ser classificado como uma loja |  |

### L15 - Negócio
| Classificação | Noção | Impacto | Sinônimos |
| ------------- | ----- | ------- | --------- |
| Objeto | Firmamento de contrato entre um proprietário de [imóvel](#l10-imovel) e um cliente, podendo ser de [aluguel]((#l1-aluguel)) ou [venda](#l19-venda) | Um negócio é fechado por meio da [imobiliária](#l9-imobiliaria) |  |

### L16 - Preço
| Classificação | Noção | Impacto | Sinônimos |
| ------------- | ----- | ------- | --------- |
| Objeto | Valor total (para [venda](#l19-venda)) ou mensal (para [aluguel](#l1-aluguel)) de um [imóvel](#l10-imovel) | Preço é uma das características de um [imóvel](#l10-imovel) |  |

### L17 - Terreno
| Classificação | Noção | Impacto | Sinônimos |
| ------------- | ----- | ------- | --------- |
| Objeto | [Imóvel](#l10-imovel) que não possui nenhuma edificação construída | Um [imóvel](#l10-imovel) pode ser classificado como um terreno | Lote |

### L18 - Vendedor
| Classificação | Noção | Impacto | Sinônimos |
| ------------- | ----- | ------- | --------- |
| Sujeito | Proprietário que realiza [negócio](#l15-negocio) de [venda](#l19-venda) | Um [imóvel](#l10-imovel) é vendido por um vendedor |  |

### L19 - Venda
| Classificação | Noção | Impacto | Sinônimos |
| ------------- | ----- | ------- | --------- |
| Objeto | [Negócio](#l15-negocio) em que um proprietário cede o [imóvel](#l10-imovel) para um cliente mediante pagamento | A [imobiliária](#l9-imobiliaria) intermedia a venda entre [vendedor](#l18-vendedor) e [comprador](#l6-comprador) |  |

### L20 - Visita
| Classificação | Noção | Impacto | Sinônimos |
| ------------- | ----- | ------- | --------- |
| Objeto | Ida de um cliente, acompanhado de um [corretor](#l7-corretor), a um [imóvel](#l10-imovel) ao qual ele tenha interesse | As visitas são gerenciadas pela [imobiliária](#l9-imobiliaria) |  |


## Referências Bibliográficas
SILVA, L. F.. Uma Estratégia Orientada a Aspectos para Modelagem de Requisitos. Tese de Doutorado – PUC-Rio. Rio de Janeiro. 2006.  

SANTANDER, V. F. A.. Integrando Modelagem Organizacional com Modelagem Funcional. Tese de Doutorado – UFPE. Recife. 2002.  

Leite, Julio Cesar Sampaio do Prado. Livro Vivo- Engenharia de Requisitos, Parte IV. Disponível em:  [http://livrodeengenhariaderequisitos.blogspot.com/](http://livrodeengenhariaderequisitos.blogspot.com/).  

## Versionamento
| Data       | Versão | Descrição                                | Autor             |
| --------- | ----- | --------------------------------------- | ---------------- |
| 03/08/2021 | 1.0    | Criação do Documento          | Giovana Dionisio |