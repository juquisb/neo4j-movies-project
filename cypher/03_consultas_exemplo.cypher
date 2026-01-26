// =======================================
// CONSULTAS DE EXEMPLO – NEO4J MOVIES
// =======================================


// Listar todos os filmes cadastrados
MATCH (f:Filme)
RETURN f.Titulo AS Filme, f.Ano AS Ano
ORDER BY Ano;

//  Ver atores de um filme específico
MATCH (a:Ator)-[:ATUOU_EM]->(f:Filme {Titulo: "Matrix"})
RETURN a.Nome AS Ator;

//  Ver filmes em que um ator atuou
MATCH (a:Ator {Nome: "Keanu Reeves"})-[:ATUOU_EM]->(f:Filme)
RETURN f.Titulo AS Filme, f.Ano AS Ano
ORDER BY Ano;

// Filmes por gênero
MATCH (f:Filme)-[:TEM_GENERO]->(g:Genero {Nome: "Ficção Científica"})
RETURN f.Titulo AS Filme, f.Ano AS Ano;

// Diretores e seus filmes
MATCH (d:Diretor)-[:DIRIGIU]->(f:Filme)
RETURN d.Nome AS Diretor, f.Titulo AS Filme
ORDER BY Diretor;

//  Filmes com mais de um gênero
MATCH (f:Filme)-[:TEM_GENERO]->(g:Genero)
WITH f, count(g) AS TotalGeneros
WHERE TotalGeneros > 1
RETURN f.Titulo AS Filme, TotalGeneros;

// Atores que trabalharam com um diretor específico
MATCH (a:Ator)-[:ATUOU_EM]->(f:Filme)<-[:DIRIGIU]-(d:Diretor {Nome: "Christopher Nolan"})
RETURN DISTINCT a.Nome AS Ator;

// Caminho entre ator e gênero (visual)
MATCH p = (a:Ator {Nome: "Matthew McConaughey"})-[:ATUOU_EM]->(:Filme)-[:TEM_GENERO]->(:Genero)
RETURN p;


// Quantidade de filmes por ator
MATCH (a:Ator)-[:ATUOU_EM]->(f:Filme)
RETURN a.Nome AS Ator, count(f) AS TotalFilmes
ORDER BY TotalFilmes DESC;


// Visão geral do grafo
MATCH (n)
RETURN labels(n) AS Tipo, count(*) AS Quantidade
ORDER BY Quantidade DESC;
