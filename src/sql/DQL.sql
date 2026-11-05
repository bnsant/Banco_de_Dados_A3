USE campeonato_esports;

SELECT
    c.id_campeonato,
    c.nome AS campeonato,
    j.nome AS jogo,
    j.genero,
    j.plataforma
FROM CAMPEONATO c
INNER JOIN JOGO j
    ON c.id_jogo = j.id_jogo;

SELECT
    c.nome AS campeonato,
    e.nome AS equipe,
    i.data_inscricao
FROM INSCRICAO i
INNER JOIN CAMPEONATO c
    ON i.id_campeonato = c.id_campeonato
INNER JOIN EQUIPE e
    ON i.id_equipe = e.id_equipe
ORDER BY c.nome, e.nome;

SELECT
    c.nome AS campeonato,
    e.nome AS equipe,
    e.sigla,
    i.data_inscricao
FROM INSCRICAO i
INNER JOIN CAMPEONATO c
    ON i.id_campeonato = c.id_campeonato
INNER JOIN EQUIPE e
    ON i.id_equipe = e.id_equipe
WHERE c.id_campeonato = 1;

SELECT
    j.nome AS jogo,
    c.nome AS campeonato,
    e.nome AS equipe,
    e.sigla,
    i.data_inscricao
FROM JOGO j
INNER JOIN CAMPEONATO c
    ON j.id_jogo = c.id_jogo
INNER JOIN INSCRICAO i
    ON c.id_campeonato = i.id_campeonato
INNER JOIN EQUIPE e
    ON i.id_equipe = e.id_equipe
ORDER BY c.nome, e.nome;