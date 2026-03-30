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

Encontrar príncipios que facilitem a criação, manutenção e evolução de feature models.
Os autores encontraram 34 princípios divididos em 8 categorias através de pesquisas com experts na área.

---

## 2. Resumo

**Resuma o texto brevemente.**  
_Indique o problema abordado, a proposta principal e os principais resultados, argumentos ou conclusões._

O problema é que o ciclo de vida de uma feature model é algo não formalizado e portanto há muito esforço repetitivo que pode ser mitigado através da adoção de príncipios.

Os autores, através do método de snowballing, encontraram 10 experts em feature models e extraíram através de entrevistas 34 príncipios para o ciclo de vida de um feature model.

Um ponto muito importante é a variância no número total de features que cada expert precisou considerar durante o desenvolvimento do feature model, de 40 até mais do que 1000.
Essa variância indica que muito provavelmente certos princípios são localizados enquanto outros são universais (e isso é comprovado no artigo)

---

## 3. Contribuições e destaques

**Quais são as principais contribuições, pontos fortes ou aspectos mais interessantes do texto?**

- Identificação e mapeamento de 34 princípios em 8 categorias, isso reduz risco de projeto  
- Apresentação de uma metodologia que segundo os mesmos é reproduzível, logo pode ser replicada em outros contextos  
- Reconhecimento que muitos dos príncipios são comuns na prática da engenharia de softwar como modularização, dividir para conquistar, camadas de abstração   

---

## 4. Limitações, fragilidades ou pontos discutíveis

**Quais são as principais limitações, fraquezas ou aspectos que merecem crítica?**

- 
-  
-  

---

## 5. Pontos pouco claros

**Que partes do texto ficaram confusas, pouco explicadas ou difíceis de entender?**

No príncipio de modelagem "Use workshops to extract domain knowldege" seria interessante uma referência ou explanação de como exatamente se dá esses workshops.

No princípio de modelagem "If needed, introduce spuriuous features" o exemplo não ficou muito claro e o que difere esse príncipo de imediamente abaixo "define default feature values" aparentemente são soluções para o mesmo problema.

---

## 6. Relação com a disciplina

**Como este texto se conecta com os temas da disciplina?**  

Durante as aulas o conceito de feature modeling foi introduzido, com um foco no embasamento teórico antes de uma abordagem prática, o texto permite que o aluno participe do desenvolvimento de um feature model durante todo o ciclo de vida do mesmo (assumindo os pré-requisitos mencionados no artigo) 

---

## 7. Perguntas para discussão

**Liste pelo menos 2 perguntas para discussão em sala.**

1.  O que seria um teste de regressão para um feature model?
2.  Existe uma ênfase muito grande em diminuir o "drift" de configuração entre documentação e implementação, porque não usar abordagems de IaC (infrastructure as code?)
...

---

## 8. Avaliação geral

**Qual é sua avaliação geral do texto como leitura da disciplina?** 
