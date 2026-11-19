USE campeonato_esports;

CREATE TABLE RESULTADO (
    id_resultado INT AUTO_INCREMENT PRIMARY KEY,
    id_partida INT NOT NULL UNIQUE,
    vencedor INT NOT NULL,
    placar_equipe_1 INT NOT NULL,
    placar_equipe_2 INT NOT NULL,

    FOREIGN KEY (id_partida)
        REFERENCES PARTIDA(id_partida),

    FOREIGN KEY (vencedor)
        REFERENCES EQUIPE(id_equipe),

    CHECK (placar_equipe_1 >= 0),
    CHECK (placar_equipe_2 >= 0)
);