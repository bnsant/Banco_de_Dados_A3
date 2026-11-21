USE campeonato_esports;

SELECT
    JOGADOR.nome AS jogador,
    JOGADOR.nickname,
    EQUIPE.nome AS equipe
FROM JOGADOR
INNER JOIN EQUIPE
    ON JOGADOR.id_equipe = EQUIPE.id_equipe;