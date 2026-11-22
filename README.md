# Campeonato de eSports — Banco de Dados A3

Projeto acadêmico desenvolvido para a Unidade Curricular de Banco de Dados da Universidade do Sul de Santa Catarina (UNISUL), no segundo semestre de 2026.

- **Curso:** Ciência da Computação
- **Professor:** Osmar de Oliveira Braz Júnior
- **SGBD:** MySQL

## Integrantes

| Nome completo | RA | GitHub |
|---|---|---|
| Bernardo Mendonça Santiago de Lima | 10725116625 | [bnsant](https://github.com/bnsant) |
| Kayky de Souza Lautert | 1072511581 | [Lautert7](https://github.com/Lautert7) |
| Roger Porton Kuntze | 10725118527 | [rogerpk13](https://github.com/rogerpk13) |

## Sobre o projeto

O projeto tem como objetivo desenvolver um banco de dados relacional destinado ao gerenciamento de campeonatos de esportes eletrônicos (eSports).

O sistema permite cadastrar jogos, campeonatos, equipes, jogadores, arenas, inscrições, partidas e resultados, possibilitando o acompanhamento dos confrontos e do desempenho das equipes participantes.

## Entidades do banco de dados

| Entidade | Descrição |
|---|---|
| JOGO | Cadastro dos jogos eletrônicos. |
| CAMPEONATO | Gerenciamento dos campeonatos. |
| EQUIPE | Cadastro das equipes participantes. |
| JOGADOR | Cadastro dos jogadores e suas equipes. |
| ARENA | Cadastro dos locais de realização das partidas. |
| INSCRICAO | Associação das equipes aos campeonatos. |
| PARTIDA | Gerenciamento dos confrontos entre equipes. |
| RESULTADO | Registro dos placares e equipes vencedoras. |

## Etapas do desenvolvimento

- Diagrama Entidade-Relacionamento (DER).
- Modelo relacional.
- Diagrama Entidade-Relacionamento em notação UML.
- Dependências funcionais.
- Normalização até a terceira forma normal (3FN).
- Dicionário de dados.
- Implementação SQL — DDL.
- Implementação SQL — DML.
- Implementação SQL — DQL.

## Tecnologias utilizadas

- MySQL
- MySQL Workbench
- Draw.io
- Git
- GitHub
- SQL

## Estrutura do repositório

```text
Banco_de_Dados_A3/
├── docs/
├── src/
│   └── sql/
├── .gitignore
├── LICENSE
└── README.md
```

## Implementação SQL

### DDL — Data Definition Language

Criação das tabelas, definição dos atributos, chaves primárias,
chaves estrangeiras e restrições de integridade.

### DML — Data Manipulation Language

Inserção, atualização e exclusão de registros, utilizando dados
fictícios para testar o funcionamento do banco de dados.

### DQL — Data Query Language

Consultas SQL destinadas à recuperação e organização das
informações armazenadas, utilizando SELECT, JOIN, COUNT,
GROUP BY e ORDER BY.

## Distribuição de tarefas

### Bernardo Mendonça Santiago de Lima

**Entidades:** JOGO, CAMPEONATO e INSCRICAO.

Arquivos desenvolvidos:

- [DDL.sql](src/sql/DDL.sql)
- [DML.sql](src/sql/DML.sql)
- [DQL.sql](src/sql/DQL.sql)

### Roger Porton Kuntze

**Entidades:** EQUIPE, JOGADOR e ARENA.

Arquivos desenvolvidos:

- [DDL_EQUIPE.sql](src/sql/DDL_EQUIPE.sql)
- [DDL_JOGADOR.sql](src/sql/DDL_JOGADOR.sql)
- [DDL_ARENA.sql](src/sql/DDL_ARENA.sql)
- [DML_EQUIPE.sql](src/sql/DML_EQUIPE.sql)
- [DML_JOGADOR.sql](src/sql/DML_JOGADOR.sql)
- [DML_ARENA.sql](src/sql/DML_ARENA.sql)
- [UPDATE_EQUIPE.sql](src/sql/UPDATE_EQUIPE.sql)
- [UPDATE_JOGADOR.sql](src/sql/UPDATE_JOGADOR.sql)
- [UPDATE_ARENA.sql](src/sql/UPDATE_ARENA.sql)
- [DELETE_EQUIPE.sql](src/sql/DELETE_EQUIPE.sql)
- [DELETE_JOGADOR.sql](src/sql/DELETE_JOGADOR.sql)
- [DELETE_ARENA.sql](src/sql/DELETE_ARENA.sql)
- [DQL_JOGADORES_EQUIPES.sql](src/sql/DQL_JOGADORES_EQUIPES.sql)
- [DQL_QUANTIDADE_JOGADORES.sql](src/sql/DQL_QUANTIDADE_JOGADORES.sql)
- [DQL_ARENAS_CAPACIDADE.sql](src/sql/DQL_ARENAS_CAPACIDADE.sql)

### Kayky de Souza Lautert

**Entidades:** PARTIDA e RESULTADO.

Arquivos desenvolvidos:

- [DDL_PARTIDA.sql](src/sql/DDL_PARTIDA.sql)
- [DDL_RESULTADO.sql](src/sql/DDL_RESULTADO.sql)
- [DML_PARTIDA.sql](src/sql/DML_PARTIDA.sql)
- [DML_RESULTADO.sql](src/sql/DML_RESULTADO.sql)
- [UPDATE_PARTIDA.sql](src/sql/UPDATE_PARTIDA.sql)
- [UPDATE_RESULTADO.sql](src/sql/UPDATE_RESULTADO.sql)
- [DELETE_PARTIDA.sql](src/sql/DELETE_PARTIDA.sql)
- [DELETE_RESULTADO.sql](src/sql/DELETE_RESULTADO.sql)
- [DQL_PARTIDAS.sql](src/sql/DQL_PARTIDAS.sql)
- [DQL_RESULTADOS.sql](src/sql/DQL_RESULTADOS.sql)
- [DQL_VITORIAS_EQUIPES.sql](src/sql/DQL_VITORIAS_EQUIPES.sql)

## Como executar o projeto

1. Clone o repositório:

```bash
git clone https://github.com/bnsant/Banco_de_Dados_A3.git
```

2. Abra o MySQL Workbench e conecte-se ao servidor MySQL.

3. Crie o banco de dados:

```sql
CREATE DATABASE IF NOT EXISTS campeonato_esports;
USE campeonato_esports;
```

4. Execute os scripts DDL, respeitando as dependências entre
as tabelas.

5. Execute os scripts de inserção DML, respeitando as chaves
estrangeiras.

6. Execute as consultas DQL para visualizar os dados cadastrados.

7. Teste os comandos de atualização e exclusão em uma base de testes.

## Desenvolvimento colaborativo

O projeto foi desenvolvido utilizando a branch `main`, com
commits individuais realizados pelos integrantes responsáveis
pelos respectivos arquivos.

## Licença

Este projeto está disponibilizado sob a licença MIT.

Para mais informações, consulte o arquivo [LICENSE](LICENSE).
