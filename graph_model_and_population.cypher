
CREATE CONSTRAINT usuario_id_unique IF NOT EXISTS FOR (u:Usuario) REQUIRE u.id IS UNIQUE;

CREATE CONSTRAINT serie_id_unique IF NOT EXISTS FOR (s:Serie) REQUIRE s.id IS UNIQUE;

CREATE CONSTRAINT ator_id_unique IF NOT EXISTS FOR (a:Ator) REQUIRE a.id IS UNIQUE;

CREATE CONSTRAINT genero_id_unique IF NOT EXISTS FOR (g:Genero) REQUIRE g.id IS UNIQUE;

CREATE CONSTRAINT filme_id_unique IF NOT EXISTS FOR (f:Filme) REQUIRE f.id IS UNIQUE;

CREATE CONSTRAINT diretor_id_unique IF NOT EXISTS FOR (d:Diretor) REQUIRE d.id IS UNIQUE;

CREATE (u:Usuario {id:1, name:"Marcos", idade:23});
CREATE (u:Usuario {id:2, name:"Bento", idade:30});
CREATE (u:Usuario {id:3, name:"Danilo", idade:42});
CREATE (u:Usuario {id:4, name:"Roger", idade:35});
CREATE (u:Usuario {id:5, name:"Felipe", idade:20});
CREATE (u:Usuario {id:6, name:"Manoela", idade:25});
CREATE (u:Usuario {id:7, name:"Rebeca", idade:20});
CREATE (u:Usuario {id:8, name:"Marta", idade:40});
CREATE (u:Usuario {id:9, name:"Patricia", idade:18});
CREATE (u:Usuario {id:10, name:"Marlene", idade:30});


CREATE (g:Genero {id:1, name:"Guerra"});
CREATE (g:Genero {id:2, name:"Ficção Cientifica"});
CREATE (g:Genero {id:3, name:"Suspense"});
CREATE (g:Genero {id:4, name:"Aventura"});
CREATE (g:Genero {id:5, name:"Drama"});
CREATE (g:Genero {id:6, name:"Romance"});
CREATE (g:Genero {id:7, name:"Crime"});



CREATE (s:Serie {id:1, name:"Band of Brothers"});
CREATE (s:Serie {id:2, name:"The Pacific"});
CREATE (s:Serie {id:3, name:"The Mandalorian"});
CREATE (s:Serie {id:4, name:"Sense8"});
CREATE (s:Serie {id:5, name:"Os Anéis de Poder"});
CREATE (s:Serie {id:6, name:"The Knick"});


CREATE (a:Ator {id:1, name:"Pedro Pascal", idade:51});
CREATE (a:Ator {id:2, name:"Leonardo DiCaprio", idade:50});
CREATE (a:Ator {id:3, name:"Sam Worthington", idade:49});
CREATE (a:Ator {id:4, name:"Toby Onwumere", idade:35});
CREATE (a:Ator {id:5, name:"Roy Scheider", idade:75});
CREATE (a:Ator {id:6, name:"Harrison Ford", idade:83});


CREATE (f:Filme {id:1, name:"Tubarão"});
CREATE (f:Filme {id:2, name:"A Lista de Schindler"});
CREATE (f:Filme {id:3, name:"O Poderoso Chefão"});
CREATE (f:Filme {id:4, name:"Titanic"});
CREATE (f:Filme {id:5, name:"Avatar"});
CREATE (f:Filme {id:6, name:"Oppenheimer"});
CREATE (f:Filme {id:7, name:"Cidade de Deus"});
CREATE (f:Filme {id:8, name:"Star Wars"});
CREATE (f:Filme {id:9, name:"Indiana Jones"});


CREATE (d:Diretor {id:1, name:"Steven Spielberg", idade:79});
CREATE (d:Diretor {id:2, name:"Steven Soderbergh", idade:63});
CREATE (d:Diretor {id:3, name:"George Lucas", idade:80});
CREATE (d:Diretor {id:4, name:"James Cameron", idade:70});
CREATE (d:Diretor {id:5, name:"Christopher Nolan", idade:55});
CREATE (d:Diretor {id:6, name:"Jon Favreau", idade:59});
CREATE (d:Diretor {id:7, name:"Francis Ford Coppola", idade:85});
CREATE (d:Diretor {id:8, name:"Fernando Meirelles", idade:70});
CREATE (d:Diretor {id:9, name:"Lana Wachowsk", idade:68});
CREATE (d:Diretor {id:10, name:"J.A. Bayona", idade:50});

MATCH (f:Filme {id:1}), (g:Genero {id:3}) CREATE (f)-[:POSSUI]->(g);
MATCH (f:Filme {id:2}), (g:Genero {id:5}) CREATE (f)-[:POSSUI]->(g);
MATCH (f:Filme {id:3}), (g:Genero {id:5}) CREATE (f)-[:POSSUI]->(g);
MATCH (f:Filme {id:4}), (g:Genero {id:6}) CREATE (f)-[:POSSUI]->(g);
MATCH (f:Filme {id:5}), (g:Genero {id:2}) CREATE (f)-[:POSSUI]->(g);
MATCH (f:Filme {id:6}), (g:Genero {id:3}) CREATE (f)-[:POSSUI]->(g);
MATCH (f:Filme {id:7}), (g:Genero {id:7}) CREATE (f)-[:POSSUI]->(g);
MATCH (f:Filme {id:8}), (g:Genero {id:2}) CREATE (f)-[:POSSUI]->(g);
MATCH (f:Filme {id:9}), (g:Genero {id:4}) CREATE (f)-[:POSSUI]->(g);

MATCH (s:Serie {id:1}), (g:Genero {id:1}) CREATE (s)-[:POSSUI]->(g);
MATCH (s:Serie {id:2}), (g:Genero {id:1}) CREATE (s)-[:POSSUI]->(g);
MATCH (s:Serie {id:3}), (g:Genero {id:2}) CREATE (s)-[:POSSUI]->(g);
MATCH (s:Serie {id:4}), (g:Genero {id:3}) CREATE (s)-[:POSSUI]->(g);
MATCH (s:Serie {id:5}), (g:Genero {id:4}) CREATE (s)-[:POSSUI]->(g);
MATCH (s:Serie {id:6}), (g:Genero {id:5}) CREATE (s)-[:POSSUI]->(g);

MATCH (d:Diretor {id:1}), (f:Filme {id:1}) CREATE (d)-[:DIRIGIU]->(f);
MATCH (d:Diretor {id:1}), (f:Filme {id:2}) CREATE (d)-[:DIRIGIU]->(f);
MATCH (d:Diretor {id:7}), (f:Filme {id:3}) CREATE (d)-[:DIRIGIU]->(f);
MATCH (d:Diretor {id:4}), (f:Filme {id:4}) CREATE (d)-[:DIRIGIU]->(f);
MATCH (d:Diretor {id:4}), (f:Filme {id:5}) CREATE (d)-[:DIRIGIU]->(f);
MATCH (d:Diretor {id:5}), (f:Filme {id:6}) CREATE (d)-[:DIRIGIU]->(f);
MATCH (d:Diretor {id:8}), (f:Filme {id:7}) CREATE (d)-[:DIRIGIU]->(f);
MATCH (d:Diretor {id:3}), (f:Filme {id:8}) CREATE (d)-[:DIRIGIU]->(f);
MATCH (d:Diretor {id:1}), (f:Filme {id:9}) CREATE (d)-[:DIRIGIU]->(f);

MATCH (d:Diretor {id:1}), (s:Serie {id:1}) CREATE (d)-[:DIRIGIU]->(s);
MATCH (d:Diretor {id:1}), (s:Serie {id:2}) CREATE (d)-[:DIRIGIU]->(s);
MATCH (d:Diretor {id:6}), (s:Serie {id:3}) CREATE (d)-[:DIRIGIU]->(s);
MATCH (d:Diretor {id:9}), (s:Serie {id:4}) CREATE (d)-[:DIRIGIU]->(s);
MATCH (d:Diretor {id:10}), (s:Serie {id:5}) CREATE (d)-[:DIRIGIU]->(s);
MATCH (d:Diretor {id:2}), (s:Serie {id:6}) CREATE (d)-[:DIRIGIU]->(s);


MATCH (a:Ator {id:1}), (s:Serie {id:3}) CREATE (a)-[:ATUOU_EM]->(s);
MATCH (a:Ator {id:4}), (s:Serie {id:4}) CREATE (a)-[:ATUOU_EM]->(s);

MATCH (a:Ator {id:2}), (f:Filme {id:4}) CREATE (a)-[:ATUOU_EM]->(f);
MATCH (a:Ator {id:3}), (f:Filme {id:5}) CREATE (a)-[:ATUOU_EM]->(f);
MATCH (a:Ator {id:5}), (f:Filme {id:1}) CREATE (a)-[:ATUOU_EM]->(f);
MATCH (a:Ator {id:6}), (f:Filme {id:9}) CREATE (a)-[:ATUOU_EM]->(f);
MATCH (a:Ator {id:6}), (f:Filme {id:8}) CREATE (a)-[:ATUOU_EM]->(f);

MATCH (u:Usuario {id:1}), (f:Filme {id:1}) CREATE (u)-[:ASSISTIU {avaliacao:7}]->(f);
MATCH (u:Usuario {id:1}), (f:Filme {id:2}) CREATE (u)-[:ASSISTIU {avaliacao:8}]->(f);
MATCH (u:Usuario {id:2}), (f:Filme {id:2}) CREATE (u)-[:ASSISTIU {avaliacao:5}]->(f);
MATCH (u:Usuario {id:2}), (f:Filme {id:1}) CREATE (u)-[:ASSISTIU {avaliacao:6}]->(f);
MATCH (u:Usuario {id:3}), (f:Filme {id:3}) CREATE (u)-[:ASSISTIU {avaliacao:10}]->(f);
MATCH (u:Usuario {id:4}), (f:Filme {id:4}) CREATE (u)-[:ASSISTIU {avaliacao:9}]->(f);
MATCH (u:Usuario {id:5}), (f:Filme {id:5}) CREATE (u)-[:ASSISTIU {avaliacao:3}]->(f);
MATCH (u:Usuario {id:6}), (f:Filme {id:6}) CREATE (u)-[:ASSISTIU {avaliacao:1}]->(f);
MATCH (u:Usuario {id:7}), (f:Filme {id:7}) CREATE (u)-[:ASSISTIU {avaliacao:6}]->(f);
MATCH (u:Usuario {id:8}), (f:Filme {id:8}) CREATE (u)-[:ASSISTIU {avaliacao:10}]->(f);
MATCH (u:Usuario {id:9}), (f:Filme {id:9}) CREATE (u)-[:ASSISTIU {avaliacao:1}]->(f);
MATCH (u:Usuario {id:10}), (f:Filme {id:10}) CREATE (u)-[:ASSISTIU {avaliacao:5}]->(f);
MATCH (u:Usuario {id:10}), (f:Filme {id:1}) CREATE (u)-[:ASSISTIU {avaliacao:1}]->(f);

MATCH (u:Usuario {id:1}), (s:Serie {id:1}) CREATE (u)-[:ASSISTIU {avaliacao:7}]->(s);
MATCH (u:Usuario {id:1}), (s:Serie {id:2}) CREATE (u)-[:ASSISTIU {avaliacao:9}]->(s);
MATCH (u:Usuario {id:2}), (s:Serie {id:1}) CREATE (u)-[:ASSISTIU {avaliacao:10}]->(s);
MATCH (u:Usuario {id:2}), (s:Serie {id:3}) CREATE (u)-[:ASSISTIU {avaliacao:5}]->(s);
MATCH (u:Usuario {id:2}), (s:Serie {id:5}) CREATE (u)-[:ASSISTIU {avaliacao:6}]->(s);
MATCH (u:Usuario {id:3}), (s:Serie {id:6}) CREATE (u)-[:ASSISTIU {avaliacao:5}]->(s);
MATCH (u:Usuario {id:4}), (s:Serie {id:1}) CREATE (u)-[:ASSISTIU {avaliacao:10}]->(s);
MATCH (u:Usuario {id:4}), (s:Serie {id:5}) CREATE (u)-[:ASSISTIU {avaliacao:1}]->(s);
MATCH (u:Usuario {id:4}), (s:Serie {id:3}) CREATE (u)-[:ASSISTIU {avaliacao:7}]->(s);
MATCH (u:Usuario {id:5}), (s:Serie {id:4}) CREATE (u)-[:ASSISTIU {avaliacao:10}]->(s);
MATCH (u:Usuario {id:6}), (s:Serie {id:4}) CREATE (u)-[:ASSISTIU {avaliacao:9}]->(s);
MATCH (u:Usuario {id:6}), (s:Serie {id:1}) CREATE (u)-[:ASSISTIU {avaliacao:1}]->(s);
MATCH (u:Usuario {id:6}), (s:Serie {id:3}) CREATE (u)-[:ASSISTIU {avaliacao:5}]->(s);
MATCH (u:Usuario {id:6}), (s:Serie {id:6}) CREATE (u)-[:ASSISTIU {avaliacao:2}]->(s);
MATCH (u:Usuario {id:7}), (s:Serie {id:4}) CREATE (u)-[:ASSISTIU {avaliacao:10}]->(s);
MATCH (u:Usuario {id:8}), (s:Serie {id:4}) CREATE (u)-[:ASSISTIU {avaliacao:10}]->(s);
MATCH (u:Usuario {id:8}), (s:Serie {id:1}) CREATE (u)-[:ASSISTIU {avaliacao:10}]->(s);
MATCH (u:Usuario {id:9}), (s:Serie {id:4}) CREATE (u)-[:ASSISTIU {avaliacao:3}]->(s);
MATCH (u:Usuario {id:9}), (s:Serie {id:5}) CREATE (u)-[:ASSISTIU {avaliacao:6}]->(s);
MATCH (u:Usuario {id:10}), (s:Serie {id:1}) CREATE (u)-[:ASSISTIU {avaliacao:7}]->(s);