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

{RESERVADO} {lexema = yytext(); return RESERVADO;}
{TIPO} {lexema = yytext(); return TIPO;}
{OPERADOR_ARITMETICO} {lexema = yytext(); return OPERADOR_ARITMETICO;}
{OPERADOR_ATRIBUICAO} {lexema = yytext(); return OPERADOR_ATRIBUICAO;}
{OPERADOR_RELACIONAL} {lexema = yytext(); return OPERADOR_RELACIONAL;}
{OPERADOR_LOGICO} {lexema = yytext(); return OPERADOR_LOGICO;}
{OPERADOR_BOOLEANO} {lexema = yytext(); return OPERADOR_BOOLEANO;}
{COMENTARIO} {lexema = yytext(); return COMENTARIO;}
{SEPARADOR} {lexema = yytext(); return SEPARADOR;}
{ESPACO} {}
{LETRA}({LETRA}|{DIGITO})* {lexema=yytext(); return ID;}
("(-"{DIGITO}+")")|{DIGITO}+ {lexema=yytext(); return NUMERO;}

. {return ERROR;}
