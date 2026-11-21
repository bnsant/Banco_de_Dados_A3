USE campeonato_esports;

CREATE TABLE PARTIDA (
    id_partida INT AUTO_INCREMENT PRIMARY KEY,
    id_campeonato INT NOT NULL,
    id_arena INT NOT NULL,
    id_equipe_1 INT NOT NULL,
    id_equipe_2 INT NOT NULL,
    data_hora DATETIME NOT NULL,

    FOREIGN KEY (id_campeonato)
        REFERENCES CAMPEONATO(id_campeonato),

    FOREIGN KEY (id_arena)
        REFERENCES ARENA(id_arena),

    FOREIGN KEY (id_equipe_1)
        REFERENCES EQUIPE(id_equipe),

    FOREIGN KEY (id_equipe_2)
        REFERENCES EQUIPE(id_equipe),

    CHECK (id_equipe_1 <> id_equipe_2)
);