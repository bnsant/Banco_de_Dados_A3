USE campeonato_esports;

CREATE TABLE EQUIPE (
    id_equipe INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    sigla VARCHAR(20) NOT NULL,
    data_criacao DATE NOT NULL
);
