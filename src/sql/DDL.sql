USE campeonato_esports;

CREATE TABLE JOGO (
    id_jogo INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    genero VARCHAR(50) NOT NULL,
    plataforma VARCHAR(50) NOT NULL
);

CREATE TABLE CAMPEONATO (
    id_campeonato INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL,
    premiacao DECIMAL(12,2) NOT NULL,
    id_jogo INT NOT NULL,

    FOREIGN KEY (id_jogo)
        REFERENCES JOGO(id_jogo)
);

CREATE TABLE INSCRICAO (
    id_inscricao INT AUTO_INCREMENT PRIMARY KEY,
    id_campeonato INT NOT NULL,
    id_equipe INT NOT NULL,
    data_inscricao DATE NOT NULL,

    FOREIGN KEY (id_campeonato)
        REFERENCES CAMPEONATO(id_campeonato),

    -- a tabela EQUIPE precisa ser criada antes da criação de INSCRICAO! :)
    FOREIGN KEY (id_equipe)
        REFERENCES EQUIPE(id_equipe)
);