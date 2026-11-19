USE campeonato_esports;

SELECT
    e.nome AS equipe,
    COUNT(r.id_resultado) AS total_vitorias
FROM EQUIPE e
LEFT JOIN RESULTADO r
    ON e.id_equipe = r.vencedor
GROUP BY e.id_equipe, e.nome
ORDER BY total_vitorias DESC;