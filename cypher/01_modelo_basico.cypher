// =======================================
// MODELO BÁSICO - NÓS INICIAIS
// =======================================

// FILMES
CREATE (:Filme {titulo: "Matrix", ano: 1999});
CREATE (:Filme {titulo: "Interestelar", ano: 2014});
CREATE (:Filme {titulo: "Titanic", ano: 1997});
CREATE (:Filme {titulo: "Forrest Gump", ano: 1994});

// GENEROS
CREATE (:Genero {nome: "Ficção Científica"});
CREATE (:Genero {nome: "Drama"});
CREATE (:Genero {nome: "Romance"});

// DIRETORES
CREATE (:Diretor {nome: "Lana Wachowski"});
CREATE (:Diretor {nome: "Christopher Nolan"});
CREATE (:Diretor {nome: "James Cameron"});
CREATE (:Diretor {nome: "Robert Zemeckis"});

// ATORES
CREATE (:Ator {nome: "Keanu Reeves"});
CREATE (:Ator {nome: "Matthew McConaughey"});
CREATE (:Ator {nome: "Leonardo DiCaprio"});
CREATE (:Ator {nome: "Tom Hanks"});
