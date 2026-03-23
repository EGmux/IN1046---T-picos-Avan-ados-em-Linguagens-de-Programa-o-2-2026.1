# Ficha de Leitura 
## IN1046 - Tópicos Avançados em Linguagens de Programação 2 - Linhas de Produtos de Software

**Aluno(a):**  Enzo Gurgel Bissoli(egb2)
**Data:**  23/03/2026
**Título do texto:** Implementing Product Line Variabilities
**Autor(es):**  Michalis Anastasopoulos, Cristina Gacek
**Ano:**  2001

--- 

### Orientações gerais
Responda de forma objetiva, com suas próprias palavras.  
Não basta resumir: procure também registrar sua avaliação crítica, dúvidas e perguntas para discussão.  
Sempre que possível, mencione elementos concretos do texto, como conceitos, exemplos, argumentos, figuras ou resultados.

---

## 1. Tema e ideia central

**Qual é o tema principal do texto e qual é sua ideia central?**  

O tema principal é a implementação de técnicas de controle de variabilidade no código fonte em linhas de produto de software.

A ideia central é que não existe uma técnica única e universalmente adequada para implementar variabilidade — cada abordagem tem trade-offs específicos (escopo, binding time, overhead, traceability, etc.), e a escolha depende fortemente do contexto. O texto se organiza como um framework de análise para ajudar na tomada de decisão, destacando ainda o problema do "what & when": quando introduzir variabilidade e qual técnica escolher.

---

## 2. Resumo

**Resuma o texto brevemente.**  
_Indique o problema abordado, a proposta principal e os principais resultados, argumentos ou conclusões._

O texto aborda o problema de como implementar variabilidade no código fonte de linhas de produto. Para isso, os autores:

    1. Levantam trabalhos anteriores (Svahnberg, Czarnecki, Weiseneker, etc.) que fornecem taxonomias e conceitos como Generative Programming e AOP.

    2. Propõem um framework de análise com critérios como escopo, binding time, overhead, separação de concerns, traceability, entre outros.

    3. Analisam as principais técnicas (compilação condicional, herança, mixins, parametrização, carregamento dinâmico, AOP, etc.) sob esses critérios.

    4. Relatam experiências práticas com retrofit de variabilidade em projetos existentes.

A conclusão é que não há bala de prata — a escolha da técnica depende do contexto, e um dos maiores desafios é decidir quando introduzir variabilidade (o problema "what & when").
---

## 3. Contribuições e destaques

**Quais são as principais contribuições, pontos fortes ou aspectos mais interessantes do texto?**

_Framework_ de decisão com critérios claros (_binding time_, eficiência, _traceability_, etc.) — algo que falta em muitos textos da área, que tendem a prescrever técnicas sem compará-las sistematicamente.

Eixos de modelagem da variabilidade: separar opcionalidade da feature (se a feature pode estar ausente) do tipo de variabilidade (alternativa, refinamento, etc.) — isso dá um vocabulário mais preciso para descrever o problema antes de escolher a técnica.

Relato de experiência prática com retrofit de variabilidade, reconhecendo explicitamente que migrar sistemas existentes é muito mais difícil do que começar um projeto _greenfield_
---

## 4. Limitações, fragilidades ou pontos discutíveis

**Quais são as principais limitações, fraquezas ou aspectos que merecem crítica?**

- O exemplo prático é apenas de uma linguagem de programação, _Delphi_ de forma que é difícil extrair sinal de ruído, pode ser que com mais exemplos práticos, certas práticas ficassem "óbvias" como boas práticas e outras como "code smells" e portanto reduzir o trabalho de um futuro pesquisado.
- É mencionado _Design Patterns_, mas o único demonstrado é o *builder pattern*, pode-se argumentar que a herança baseada em "mixin" é um _design pattern_, mas está na seção incorreta.
-
---

## 5. Pontos pouco claros

**Que partes do texto ficaram confusas, pouco explicadas ou difíceis de entender?**

O texto é bem escrito, mas senti falta de mais exemplos, principalmente de conceitos como Generic assets e Specific assets, que aparecem na fundamentação mas não são ilustrados concretamente no contexto das técnicas analisadas.

A não inserção do trabalho de Mira Mezini na seção de framework me pareceu uma oportunidade perdida, considerando sua contribuição para composição de aspectos e modularização.

Não tentar sumarizar a taxonomia de Mikael Svahnberg me pareceu outra oportunidade perdida — uma tabela consolidada ajudaria a visualizar as relações entre as técnicas.

---

## 6. Relação com a disciplina

**Como este texto se conecta com os temas da disciplina?**  

O texto se conecta diretamente com os temas da disciplina ao apresentar uma abordagem sistemática para refletir sobre os trade-offs das técnicas existentes para lidar com variabilidade.

Ao ler o texto, os alunos podem utilizar o framework e os critérios de avaliação propostos para analisar ou até mesmo criar novas técnicas através das "primitivas" apresentadas. A ênfase no problema "what & when" também alinha com a discussão em sala sobre o momento de introduzir variabilidade em um projeto.

---

## 7. Perguntas para discussão

**Liste pelo menos 2 perguntas para discussão em sala.**

Os autores não entram muito em metaprogramação fora do escopo de orientação a objetos. O que existe fora desse paradigma para lidar com variabilidade? Linguagens funcionais ou baseadas em protótipos (como Smalltalk) teriam abordagens diferentes?

A ideia de Generative Programming é atrativa — fornecer componentes parametrizados que passam por um processo intermediário e geram produtos através do configuration knowledge. Mas o que seria esse configuration knowledge na prática? Como ele se diferencia de um simples arquivo de configuração?

O que significa compor software através de "independent design decisions/intentions"? Qual seria a definição matemática de design decision e como isso seria mapeado em uma função composicional? Ou é apenas uma metáfora organizacional?

---

## 8. Avaliação geral

O texto é ótimo como revisão dos conceitos vistos em sala — pontos de variabilidade, binding time, tipos de variabilidade — e serve como material complementar para implementação de variabilidade em novas linhas de produto de software.

Sua principal força é a honestidade: não finge que existe uma resposta fácil, oferece um framework de análise, reconhece que a migração é dolorosa e admite que o problema do "what & when" é central. A estrutura de avaliação (escopo, binding time, overhead, separação de concerns, traceability, etc.) é um bom roteiro tanto para quem está aprendendo quanto para quem precisa tomar decisões reais em projetos.

A fraqueza maior é a falta de aprofundamento prático fora do exemplo em Delphi, e a pouca exploração de como as técnicas se comportam quando combinadas. Como leitura da disciplina, vale muito porque traz uma visão de engenharia realista, contrastando com textos que tratam linhas de produto como um problema puramente de design com solução conhecida.

**Qual é sua avaliação geral do texto como leitura da disciplina?**  
