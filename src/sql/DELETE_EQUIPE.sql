USE campeonato_esports;

INSERT INTO EQUIPE (nome, sigla, data_criacao)
VALUES ('Equipe Teste', 'TESTE', '2026-11-13');

DELETE FROM EQUIPE
WHERE nome = 'Equipe Teste'
AND sigla = 'TESTE';