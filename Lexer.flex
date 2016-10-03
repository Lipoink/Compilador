package analisador;

import static analisador.Token.*;

%%
%class Lexer
%type Token

IF = [if]
ELSE = [else]
OP_ARITMETICO = ["+" | "-" | "*" | "/" | "%"]
OP_LOGICO = ["&&" | "||" | "!" | "&" | "|"]
OP_RELACIONAL = [">" | "<" | "==" | "!=" | ">=" | "<=" | "<<" | ">>"]
OP_ATRIBUICAO = ["+=" | "-="  | "*=" | "/=" | "%=" | "++" | "--" | "="]
OP_BOOLEANO = [true | false]
SEPARADOR = ["(" | ")" | "{" | "}" | "[" | "]" | ";"]
CARAC_ESPECIAL = [\b | "\t" | "\n" | "\f"]
ID = [a-zA-Z_]
NUMERO = [0-9]
WS = [\t\r\n]

%{
public String lexeme;
%}

%%
/* Espaços em Branco*/
{WS} {/*Ignore*/}

/* Operadores Aritméticos */
{OP_ARITMETICO}+    {lexeme = yytext(); return OP_ARITMETICO;}

/* Operadores Lógicos */
{OP_LOGICO}+    {lexeme = yytext(); return OP_LOGICO;}

/*Operadores Relacionais */
{OP_RELACIONAL}+    {lexeme = yytext(); return OP_RELACIONAL;}

/* Operadores Atribuição */
{OP_ATRIBUICAO}+    {lexeme = yytext(); return OP_ATRIBUICAO;}

/*Operadores Booleanos*/
{OP_BOOLEANO}+    {lexeme=yytext(); return OP_BOOLEANO;}

/*Separadores */
{SEPARADOR}+    {lexeme = yytext(); return SEPARADOR;}

/* Caracteres Especiais */
{CARAC_ESPECIAL}+    {lexeme = yytext(); return CARAC_ESPECIAL;}

/* 2 palavras reservadas de java */
({IF}|{ELSE})* {lexeme = yytext(); return PALAVRA;}

/* ID's e Numeros*/
{ID}({ID}|{NUMERO})* {lexeme=yytext(); return ID;}
 ("(-"{NUMERO}+")")|{NUMERO}+ {lexeme=yytext(); return NUMERO;}

. {return ERROR;}