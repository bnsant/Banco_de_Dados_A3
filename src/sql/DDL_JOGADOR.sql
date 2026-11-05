USE campeonato_esports;

CREATE TABLE JOGADOR (
    id_jogador INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    nickname VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    id_equipe INT NOT NULL,

    CONSTRAINT fk_jogador_equipe
        FOREIGN KEY (id_equipe)
        REFERENCES EQUIPE(id_equipe)
);

