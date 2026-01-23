\# 🎬 Neo4j Movies Project



Projeto de modelagem em grafo utilizando Neo4j Aura.



\## 📌 Objetivo

Modelar filmes, gêneros, diretores e atores utilizando grafos.



\## 🧠 Modelo

\- (:Filme)

\- (:Genero)

\- (:Diretor)

\- (:Ator)



Relacionamentos:

\- (Filme)-\[:TEM\_GENERO]->(Genero)

\- (Filme)-\[:DIRIGIDO\_POR]->(Diretor)

\- (Filme)-\[:ATUOU]->(Ator)



\## 🚀 Tecnologias

\- Neo4j Aura

\- Cypher



