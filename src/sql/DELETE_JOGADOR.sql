USE campeonato_esports;

INSERT INTO JOGADOR
(nome, nickname, email, data_nascimento, id_equipe)
VALUES
('Jogador Teste', 'Teste123', 'teste@example.com', '2000-01-01', 1);

DELETE FROM JOGADOR
WHERE email = 'teste@example.com';