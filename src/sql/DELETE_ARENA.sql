USE campeonato_esports;

INSERT INTO ARENA (nome, localizacao, capacidade)
VALUES ('Arena Teste', 'Localização Teste', 1000);

DELETE FROM ARENA
WHERE nome = 'Arena Teste';