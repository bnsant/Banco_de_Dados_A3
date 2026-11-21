USE campeonato_esports;

SELECT
    p.id_partida,
    c.nome AS campeonato,
    e1.nome AS equipe_1,
    e2.nome AS equipe_2,
    a.nome AS arena,
    p.data_hora
FROM PARTIDA p
JOIN CAMPEONATO c
    ON p.id_campeonato = c.id_campeonato
JOIN EQUIPE e1
    ON p.id_equipe_1 = e1.id_equipe
JOIN EQUIPE e2
    ON p.id_equipe_2 = e2.id_equipe
JOIN ARENA a
    ON p.id_arena = a.id_arena
ORDER BY p.data_hora;