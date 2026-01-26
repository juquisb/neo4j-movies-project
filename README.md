**Neo4j Movies Project**


Projeto de modelagem de dados em grafo utilizando Neo4j Aura e Cypher, desenvolvido como parte de um bootcamp da DIO.

**📌 Objetivo do Projeto**

**Demonstrar na prática:**
    Conceitos básicos de bancos de grafos
    Criação de nós (nodes) e relacionamentos
    Uso de consultas Cypher com MATCH e RETURN
    Organização e versionamento de scripts em um repositório GitHub

**Modelo de Dados**
Nós
    (:Filme)
    (:Genero)
    (:Diretor)
    (:Ator)

**Relacionamentos**
    (Filme)-[:TEM_GENERO]->(Genero)
    (Filme)-[:DIRIGIDO_POR]->(Diretor)
    (Ator)-[:ATUOU_EM]->(Filme)

**Estrutura do Projeto**
    neo4j-movies-project/
    │
    ├── README.md
    └── cypher/
        ├── 01_modelo_basico.cypher
        ├── 02_carga_filmes_adicionais.cypher
        └── 03_consultas_exemplo.cypher

**Descrição dos arquivos**
    01_modelo_basico.cypher
    Criação inicial do modelo, com exemplos de nós (Filme, Ator, Diretor, Gênero).

    02_carga_filmes_adicionais.cypher
    Inserção de filmes adicionais e criação dos relacionamentos entre os nós.

    03_consultas_exemplo.cypher
    Consultas de leitura utilizando MATCH e RETURN para exploração do grafo.

**Tecnologias Utilizadas**
    Neo4j Aura
    Cypher Query Language
    Git / GitHub
    Git Bash

**Como Executar**
    Acesse o Neo4j Aura
    Abra o Neo4j Browser
    Execute os scripts na seguinte ordem:
    01_modelo_basico.cypher
    02_carga_filmes_adicionais.cypher
    03_consultas_exemplo.cypher

**📊 Exemplos de Consultas**
    Listar todos os filmes
    Buscar filmes por gênero
    Ver atores e os filmes em que atuaram
    Identificar diretores e suas obras

**👤 Autor**

Julio Bueno
Projeto desenvolvido para fins de estudo e portfólio.
