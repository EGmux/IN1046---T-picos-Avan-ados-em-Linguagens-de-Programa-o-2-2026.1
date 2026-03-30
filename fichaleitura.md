# Ficha de Leitura 
## IN1046 - Tópicos Avançados em Linguagens de Programação 2 - Linhas de Produtos de Software

**Aluno(a):** Enzo Gurgel Bissoli 
**Data:**  Mar 30 2026
**Título do texto:**  Principles of Feature Modeling
**Autor(es):**  Damir Nesic, Jacob Kruger, Stefan Stanciulescu, Thorsten Berger
**Ano:** 2019  

--- 

### Orientações gerais
Responda de forma objetiva, com suas próprias palavras.  
Não basta resumir: procure também registrar sua avaliação crítica, dúvidas e perguntas para discussão.  
Sempre que possível, mencione elementos concretos do texto, como conceitos, exemplos, argumentos, figuras ou resultados.

---

## 1. Tema e ideia central

**Qual é o tema principal do texto e qual é sua ideia central?**  

O tema principal do texto é a identificação de princípios práticos para o ciclo de vida de feature models — desde a criação até a manutenção e evolução. A ideia central é que esses princípios, extraídos de entrevistas com especialistas da indústria, podem reduzir esforço repetitivo e tornar o desenvolvimento de feature models mais sistemático. Os autores identificaram 34 princípios, organizados em 8 categorias, a partir de entrevistas com 10 especialistas com experiência prática na área.

---

## 2. Resumo

**Resuma o texto brevemente.**  
_Indique o problema abordado, a proposta principal e os principais resultados, argumentos ou conclusões._

O problema abordado é a falta de formalização do ciclo de vida de feature models, o que resulta em esforço repetitivo e soluções ad hoc. A proposta dos autores é identificar princípios que possam guiar a criação, manutenção e evolução desses modelos de forma sistemática.

A metodologia consistiu em entrevistas com 10 especialistas da indústria, selecionados por meio de snowballing, a partir das quais foram extraídos 34 princípios organizados em 8 categorias.

Um ponto relevante é a variância no número de features que cada especialista precisou gerenciar — de 40 a mais de 1000. Essa diferença sugere que certos princípios são aplicáveis a contextos específicos (localizados), enquanto outros são universais, o que os autores demonstram ao longo do artigo.

---

## 3. Contribuições e destaques

**Quais são as principais contribuições, pontos fortes ou aspectos mais interessantes do texto?**

Identificação e organização de 34 princípios em 8 categorias — oferece um ponto de partida estruturado para equipes que trabalham com feature models, reduzindo o risco de projetos ao evitar soluções ad hoc.

Metodologia reproduzível — o processo de extração de princípios via entrevistas com especialistas (snowballing) é documentado de forma suficientemente detalhada para ser replicado em outros contextos, como diferentes domínios ou tecnologias.

Reconhecimento da relação com princípios clássicos de engenharia de software — muitos dos princípios identificados (modularização, separação de concerns, camadas de abstração) não são novos, mas sua aplicação sistemática a feature models é uma contribuição relevante, pois valida que boas práticas conhecidas se estendem a esse domínio específico.

---

## 4. Limitações, fragilidades ou pontos discutíveis

**Quais são as principais limitações, fraquezas ou aspectos que merecem crítica?**

Definição vaga de teste de regressão — o texto menciona testes de regressão para feature models (QA3, I9, I10), mas não define claramente o que isso significa: se são testes sobre o modelo em si (validade de configurações), sobre o mapeamento feature-to-asset, ou sobre os produtos derivados. Essa ambiguidade dificulta a operacionalização da prática.

Assimetria na extração dos princípios — há uma variação significativa no número de princípios atribuídos a cada especialista (alguns com 10, outros com 1-2), sem ponderação ou normalização. Isso pode enviesar os resultados em favor de participantes mais prolíficos, sem necessariamente refletir maior relevância ou consenso na área.
---

## 5. Pontos pouco claros

**Que partes do texto ficaram confusas, pouco explicadas ou difíceis de entender?**

Princípio "Use workshops to extract domain knowledge" (Modelling, P4) — o texto menciona workshops como forma de extrair conhecimento de domínio, mas não detalha como esses workshops seriam conduzidos: quem deveria participar, qual o formato (entrevistas em grupo, dinâmicas de priorização), qual a duração ideal, ou como documentar os resultados. A falta de detalhes dificulta a replicação dessa prática por equipes que não tenham experiência prévia com feature modeling.

Princípios "If needed, introduce spurious features" e "Define default feature values" (Modelling, P6 e P7) — a distinção entre os dois princípios não ficou clara. Ambos parecem abordar situações onde o modelo precisa ser ajustado para refletir melhor a realidade do domínio (ex: introduzir uma feature artificial para agrupar outras, ou definir valores padrão para evitar configurações inválidas). O exemplo fornecido para "spurious features" não é suficiente para esclarecer quando usar uma abordagem versus a outra, nem como diferenciar uma "feature artificial" de um "valor padrão" no contexto da modelagem.

---

## 6. Relação com a disciplina

**Como este texto se conecta com os temas da disciplina?**  

Durante as aulas, o conceito de feature modeling foi introduzido com ênfase no embasamento teórico. O texto complementa essa visão ao abordar todo o ciclo de vida — extração, manutenção e evolução — e ao explicitar pré-requisitos práticos (subsistema pequeno, feedback rápido, ausência de prazos rígidos) que permitem ao aluno aplicar a teoria em contextos reais.

---

## 7. Perguntas para discussão

**Liste pelo menos 2 perguntas para discussão em sala.**

1 -O que seria um teste de regressão para um feature model? O artigo menciona testes de regressão (QA3, I9, I10) como uma prática para garantir que mudanças no modelo não quebrem configurações existentes, mas não define claramente o que isso significa. Esses testes deveriam validar apenas a consistência do modelo (ex: configurações antes válidas continuam válidas), ou também os produtos derivados (ex: o mesmo código é gerado)? Como seria possível automatizar esse tipo de teste?

2 - Por que não usar infrastructure as code (IaC) como alternativa à separação entre documentação e implementação? O artigo enfatiza a necessidade de reduzir o drift entre a documentação do feature model e sua implementação. No entanto, ferramentas de IaC (Terraform, Ansible, Pulumi) já tratam configuração como código executável, com rastreabilidade, versionamento e testes. Nesse contexto, qual seria a vantagem de manter um feature model como artefato separado, em vez de tratar o próprio código (ou a infraestrutura declarativa) como a representação única da variabilidade?
---

## 8. Avaliação geral

O texto proporciona subsídio teórico e prático para a implementação do ciclo de vida de feature models, com ênfase em uma metodologia reproduzível que permite que as técnicas de extração de conhecimento sejam replicadas em outros contextos. A identificação de 34 princípios organizados em 8 categorias oferece um ponto de partida estruturado para equipes que trabalham com variabilidade, reduzindo o risco de soluções ad hoc.

**Qual é sua avaliação geral do texto como leitura da disciplina?** 
