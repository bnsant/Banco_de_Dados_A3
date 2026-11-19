USE campeonato_esports;

SELECT
    r.id_resultado,
    c.nome AS campeonato,
    e1.nome AS equipe_1,
    r.placar_equipe_1,
    r.placar_equipe_2,
    e2.nome AS equipe_2,
    v.nome AS vencedor
FROM RESULTADO r
JOIN PARTIDA p
    ON r.id_partida = p.id_partida
JOIN CAMPEONATO c
    ON p.id_campeonato = c.id_campeonato
JOIN EQUIPE e1
    ON p.id_equipe_1 = e1.id_equipe
JOIN EQUIPE e2
    ON p.id_equipe_2 = e2.id_equipe
JOIN EQUIPE v
    ON r.vencedor = v.id_equipe
ORDER BY r.id_resultado;