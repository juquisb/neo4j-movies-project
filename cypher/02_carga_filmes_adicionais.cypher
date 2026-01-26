// ===============================
// CARGA DE FILMES ADICIONAIS
// ===============================

// Filme: Interstellar (2014)
MERGE (f:Filme {Titulo: "Interstellar", Ano: 2014})

MERGE (d:Diretor {Nome: "Christopher Nolan"})
MERGE (d)-[:DIRIGIU]->(f)

MERGE (g1:Genero {Nome: "Ficção Científica"})
MERGE (g2:Genero {Nome: "Drama"})
MERGE (f)-[:TEM_GENERO]->(g1)
MERGE (f)-[:TEM_GENERO]->(g2)

MERGE (a1:Ator {Nome: "Matthew McConaughey"})
MERGE (a2:Ator {Nome: "Anne Hathaway"})
MERGE (a3:Ator {Nome: "Jessica Chastain"})

MERGE (a1)-[:ATUOU_EM]->(f)
MERGE (a2)-[:ATUOU_EM]->(f)
MERGE (a3)-[:ATUOU_EM]->(f);
