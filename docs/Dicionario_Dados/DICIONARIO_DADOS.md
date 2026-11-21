# Dicionário de Dados

ARENA = @id_arena + nome + localizacao + capacidade *Tabela que armazena informações sobre as arenas onde são realizadas as partidas*


CAMPEONATO = @id_campeonato + nome + data_inicio + data_fim + premiacao + id_jogo *Tabela que armazena informações sobre os campeonatos de e-sports cadastrados no sistema*


capacidade = 1{caracterNumerico}10 *Quantidade máxima de pessoas suportada pela arena*


caracterAlfabetico = [A-Z | a-z] *Uma letra do alfabeto*


caracterAlfanumerico = [A-Z | a-z | 0-9 | @ | . | - | _ | espaço] *Uma letra, um número ou um sinal de pontuação*


caracterNumerico = [0-9] *Um algarismo numérico*


data = “YYYY-MM-DD” *Uma data válida no formato de quatro dígitos para o ano, dois para o mês e dois para o dia*


data_criacao = data *Data de criação da equipe*


data_fim = data *Data de término do campeonato*


data_hora = “YYYY-MM-DD HH:mm:ss” *Data e horário de realização da partida*


data_inicio = data *Data de início do campeonato*


data_inscricao = data *Data em que uma equipe realizou sua inscrição em um campeonato*


data_nascimento = data *Data de nascimento do jogador*


email = 1{caracterAlfanumerico}100 *Endereço de e-mail cadastrado para o jogador*


EQUIPE = @id_equipe + nome + sigla + data_criacao *Tabela que armazena informações sobre as equipes participantes dos campeonatos*


genero = 1{caracterAlfanumerico}50 *Gênero do jogo eletrônico, como FPS ou MOBA*


id_arena = numeroChave *Valor único de identificação da arena*


id_campeonato = numeroChave *Valor único de identificação do campeonato*


id_equipe = numeroChave *Valor único de identificação da equipe*


id_equipe_1 = numeroChave *Identificador da primeira equipe participante da partida; deve ser diferente de id_equipe_2*


id_equipe_2 = numeroChave *Identificador da segunda equipe participante da partida; deve ser diferente de id_equipe_1*


id_inscricao = numeroChave *Valor único de identificação da inscrição*


id_jogador = numeroChave *Valor único de identificação do jogador*


id_jogo = numeroChave *Valor único de identificação do jogo*


id_partida = numeroChave *Valor único de identificação da partida; na tabela RESULTADO não pode se repetir*


id_resultado = numeroChave *Valor único de identificação do resultado*


INSCRICAO = @id_inscricao + id_campeonato + id_equipe + data_inscricao *Tabela que registra a participação de uma equipe em determinado campeonato*


JOGADOR = @id_jogador + nome + nickname + email + data_nascimento + id_equipe *Tabela que armazena informações sobre os jogadores e a equipe à qual pertencem*


JOGO = @id_jogo + nome + genero + plataforma *Tabela que armazena informações sobre os jogos eletrônicos utilizados nos campeonatos*


localizacao = 1{caracterAlfanumerico}150 *Local onde está situada a arena em que as partidas são realizadas*


nickname = 1{caracterAlfanumerico}50 *Nome utilizado pelo jogador durante as competições*


nome = 1{caracterAlfanumerico}100 *Nome utilizado para identificar jogos, campeonatos, equipes ou arenas no sistema*


numeroChave = 1{caracterNumerico}10 *Valor numérico utilizado para identificar unicamente um registro*


PARTIDA = @id_partida + id_campeonato + id_arena + id_equipe_1 + id_equipe_2 + data_hora *Tabela que armazena informações sobre as partidas realizadas durante os campeonatos*


placar_equipe_1 = 1{caracterNumerico}10 *Pontuação não negativa obtida pela primeira equipe participante da partida*


placar_equipe_2 = 1{caracterNumerico}10 *Pontuação não negativa obtida pela segunda equipe participante da partida*


plataforma = 1{caracterAlfanumerico}50 *Plataforma utilizada para executar o jogo eletrônico*


premiacao = valorMonetario *Valor da premiação oferecida pelo campeonato*


RESULTADO = @id_resultado + id_partida + vencedor + placar_equipe_1 + placar_equipe_2 *Tabela que armazena o resultado correspondente a uma partida; cada partida pode possuir apenas um resultado*


sigla = 1{caracterAlfanumerico}20 *Sigla utilizada para identificar uma equipe*


valorMonetario = 1{caracterNumerico}10,2{caracterNumerico}2 *Valor numérico monetário com duas casas decimais*


vencedor = numeroChave *Identificador da equipe vencedora da partida; chave estrangeira que referencia EQUIPE(id_equipe)*