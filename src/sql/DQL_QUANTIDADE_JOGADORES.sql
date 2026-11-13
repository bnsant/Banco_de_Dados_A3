USE campeonato_esports;

SELECT
    EQUIPE.nome AS equipe,
    COUNT(JOGADOR.id_jogador) AS quantidade_jogadores
FROM EQUIPE
LEFT JOIN JOGADOR
    ON EQUIPE.id_equipe = JOGADOR.id_equipe
GROUP BY EQUIPE.id_equipe, EQUIPE.nome;