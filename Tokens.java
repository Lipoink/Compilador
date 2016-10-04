package analisador;

public enum Tokens {
    //Tokens criados na classe de regras (Regras.flex) definidos como enum para organização e utilização pela programa principal
    LETRA, DIGITO, RESERVADO, TIPO, OPERADOR_ARITMETICO, OPERADOR_ATRIBUICAO, OPERADOR_RELACIONAL, 
    OPERADOR_LOGICO, OPERADOR_BOOLEANO, COMENTARIO, ESPACO, ID, NUMERO, ERROR, SEPARADOR;
}
