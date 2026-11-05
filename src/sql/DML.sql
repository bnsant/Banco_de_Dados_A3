USE campeonato_esports;

INSERT INTO JOGO (nome, genero, plataforma) VALUES
('Valorant', 'FPS', 'PC'),
('League of Legends', 'MOBA', 'PC'),
('Counter-Strike 2', 'FPS', 'PC');

INSERT INTO CAMPEONATO
(nome, data_inicio, data_fim, premiacao, id_jogo)
VALUES
('Valorant Masters', '2026-11-01', '2026-11-10', 50000.00, 1),
('LoL Championship', '2026-11-15', '2026-11-25', 75000.00, 2),
('CS2 Open', '2026-12-01', '2026-12-08', 60000.00, 3);

INSERT INTO INSCRICAO
(id_campeonato, id_equipe, data_inscricao)
VALUES
(1, 1, '2026-10-20'),
(1, 2, '2026-10-21'),
(2, 2, '2026-10-22'),
(2, 3, '2026-10-23'),
(3, 1, '2026-10-24'),
(3, 3, '2026-10-25');

INSERT INTO INSCRICAO
(id_campeonato, id_equipe, data_inscricao)
VALUES
(3, 2, '2026-10-26');

UPDATE INSCRICAO
SET data_inscricao = '2026-10-27'
WHERE id_campeonato = 3
  AND id_equipe = 2
  AND data_inscricao = '2026-10-26';

DELETE FROM INSCRICAO
WHERE id_campeonato = 3
  AND id_equipe = 2
  AND data_inscricao = '2026-10-27';