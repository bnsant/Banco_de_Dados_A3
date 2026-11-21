USE campeonato_esports;

SELECT
    nome AS arena,
    localizacao,
    capacidade
FROM ARENA
ORDER BY capacidade DESC;