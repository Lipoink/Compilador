Centro Universitário de Brasília - UniCEUB

Construção de Compiladores - 6º Período - Professor Eduardo Santos

Aluno / Usuário no GitHub:

Álvaro Veiga / tiovo

Felipe Alves / Lipoink

Lucas Cardoso / lccherigath


Construção de Analisador Léxico e Analisador Sintático para disciplina de Construção de Compiladores como projeto final.

# FUNCIONAMENTO

O analisador léxico proposto foi desenvolvido utilizando a biblioteca JFlex para auxilio nas funcionalidades desejadas.

Primeiro passo – criação do arquivo “Regras.flex” com todas as regras de grática elaboradas pelos membros do grupo para análise.

Segundo passo – criação de uma classe chamada “Gerador.java” que passa o arquivo de regras para a biblioteca JFlex.

Terceiro passo – ao executar a classe Gerador, foi criada automaticamente a classe “Lexemas.java” que é a responsável pela análise léxica baseada nas regras definidas inicialmente.
