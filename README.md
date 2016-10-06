Centro Universitário de Brasília - UniCEUB

Construção de Compiladores - 6º Período - Professor Eduardo Santos

Aluno / Usuário no GitHub:

Álvaro Veiga / tiovo

Felipe Alves / Lipoink

Lucas Cardoso / lccherigath


Construção de Analisador Léxico e Analisador Sintático para disciplina de Construção de Compiladores como projeto final.

# FUNCIONAMENTO

O analisador léxico proposto foi desenvolvido utilizando a biblioteca JFlex para auxilio nas funcionalidades desejadas.

Primeiro passo – criação do arquivo “Regras.flex” com todas as regras de gramática elaboradas pelos membros do grupo para análise.

Segundo passo – criação de uma classe chamada “Gerador.java” que passa o arquivo de regras para a biblioteca JFlex.

Terceiro passo – ao executar a classe Gerador, foi criada automaticamente a classe “Lexemas.java” que é a responsável pela análise léxica baseada nas regras definidas inicialmente.

Quarto passo – criação de uma classe auxiliar chamada “Tokens.java”, que contém a relação de todos os tokens definidos classificados como ‘enum’ para maior facilidade em trabalhar com a manipulação das informações geradas.

Quinto passo – por último, foi criada a classe principal do nosso sistema, que recebe o nome de “Executa.java”. Nela foi implementado uma interface simples e de fácil manuseio para realização da análise léxica proposta. Junto com a interface há os tratamentos de eventos e métodos que passam o código digitado para um objeto da classe “Lexemas.java” e trata as informações retornadas como resultado da análise léxica.
