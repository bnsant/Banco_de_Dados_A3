USE campeonato_esports;

CREATE TABLE ARENA (
    id_arena INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    localizacao VARCHAR(150) NOT NULL,
    capacidade INT NOT NULL
);
