package analisador;

import static analisador.Token.*;

%%
%class Analisador
%type Token

LETRA = [a-zA-Z_]
DIGITO = [0-9]
RESERVADO = ("if" | "while" | "for" | "else" | "do" | "try" | "catch" | "null")
TIPO = ("int" | "float" | "boolean" | "enum" | "char" | "double" | "String")
OPERADOR_ARITMETICO = ("+" | "-" | "*" | "/" | "%")
OPERADOR_ATRIBUICAO = ("+=" | "-="  | "*=" | "/=" | "%=" | "++" | "--" | "=")
OPERADOR_RELACIONAL = (">" | "<" | "==" | "!=" | ">=" | "<=" | "<<" | ">>")
OPERADOR_LOGICO = ("&&" | "||" | "!" | "&" | "|")
OPERADOR_BOOLEANO = ("true" | "false")
COMENTARIO = ("//" | "/*" | "*/")
SEPARADOR = ("(" | ")" | "[" | "]" | "{" | "}" | ";")
ESPACO = [ \t\r\n]

%{
public String lexema;
%}
%%



. {return ERROR;}
