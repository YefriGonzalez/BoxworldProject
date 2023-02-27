package com.yefrig.boxworldserver.parser;
import java_cup.runtime.*;
/*Primer seccion  codigo de usuario*/

%%
/*Segunda seccion Configuracion*/
%class Lexer
%unicode
%line
%column
%int
%public
%type Token

%{

    private Token token(TokenType type) {
        return new Token(type, yyline + 1, yycolumn + 1);
    }
%}
%eofval{
    return token(TokenType.EOF);
%eofval}
%eofclose
BRICK=[\"][B][R][I][C][K][\"]
HALL=[\"][H][A][L][L][\"]
NAME=[\"][n][a][m][e][\"]
ROWS=[\"][r][o][w][s][\"]
COLS=[\"][c][o][l][s][\"]
CONFIG=[\"][c][o][n][f][i][g][\"]
BOX_COLOR=[\"][b][o][x][_][c][o][l][o][r][\"]
BOX_ON_TARGET_COLOR=[\"][b][o][x][_][o][n][_][t][a][r][g][e][t][_][c][o][l][o][r][\"]
TARGET_COLOR=[\"][t][a][r][g][e][t][_][c][o][l][o][r][\"]
BRICK_COLOR=[\"][b][r][i][c][k][_][c][o][l][o][r][\"]
HALL_COLOR=[\"][h][a][l][l][_][c][o][l][o][r][\"]
UNDEFINED_COLOR=[\"][u][n][d][e][f][i][n][e][d][_][c][o][l][o][r][\"]
PLAYER_COLOR=[\"][p][l][a][y][e][r][_][c][o][l][o][r][\"]
BOARD=[\"][b][o][a][r][d][\"]
POSX=[\"][p][o][s][X][\"]
POSY=[\"][p][o][s][Y][\"]
TYPE=[\"][t][y][p][e][\"]
BOXES=[\"][b][o][x][e][s][\"]
TARGETS=[\"][t][a][r][g][e][t][s][\"]
PLAYER=[\"][p][l][a][y][e][r][\"]
CORCHETE_A=[\[]
CORCHETE_C=[\]]
PARENTESIS_A=\(
PARENTESIS_C=\)
LLAVE_A=\{
LLAVE_C=\}
ENTERO = 0|[1-9][0-9]*
DECIMAL = {ENTERO}\.\d+
FLOOR=[F][L][O][O][R]
CEIL=[C][E][I][L]
NOMBRE =[\"][_|a-zA-Z][a-zA-Z][a-zA-Z0-9]*[\"]
SUMA=[+]
RESTA=[-]
MULTIPLICACION=[*]
DIVISION=[/]
COLOR=[#][a-fA-F0-9]+
DOSPUNTOS=":"
COMA=","
COMILLAS=\"
LineTerminator = \r|\n|\r\n
WhiteSpace     = {LineTerminator} | [ \t\f]

%init{
	yyline=1;
	yycolumn=1;
%init}
%{

%}
%%
/*Tercera seccion Reglas lexicas*/
{BRICK}					{return new Token(TokenType.BRICK,yyline,yycolumn,yytext());}
{HALL}					{return new Token(TokenType.HALL,yyline,yycolumn,yytext());}
{NAME}					{return new Token(TokenType.NAME,yyline,yycolumn,yytext());}
{ROWS}					{return new Token(TokenType.ROWS,yyline,yycolumn,yytext());}
{COLS}					{return new Token(TokenType.COLS,yyline,yycolumn,yytext());}
{CONFIG}				{return new Token(TokenType.CONFIG,yyline,yycolumn,yytext());}
{BOX_COLOR}				{return new Token(TokenType.BOX_COLOR,yyline,yycolumn,yytext());}
{BOX_ON_TARGET_COLOR}	{return new Token(TokenType.BOX_ON_TARGET_COLOR,yyline,yycolumn,yytext());}
{TARGET_COLOR}			{return new Token(TokenType.TARGET_COLOR,yyline,yycolumn,yytext());}
{BRICK_COLOR}			{return new Token(TokenType.BRICK_COLOR,yyline,yycolumn,yytext());}
{HALL_COLOR}			{return new Token(TokenType.HALL_COLOR,yyline,yycolumn,yytext());}
{UNDEFINED_COLOR}		{return new Token(TokenType.UNDEFINED_COLOR,yyline,yycolumn,yytext());}
{PLAYER_COLOR}			{return new Token(TokenType.PLAYER_COLOR,yyline,yycolumn,yytext());}
{BOARD}					{return new Token(TokenType.BOARD,yyline,yycolumn,yytext());}
{POSX}					{return new Token(TokenType.POSX,yyline,yycolumn,yytext());}
{POSY}					{return new Token(TokenType.POSY,yyline,yycolumn,yytext());}
{TYPE}					{return new Token(TokenType.TYPE,yyline,yycolumn,yytext());}
{BOXES}					{return new Token(TokenType.BOXES,yyline,yycolumn,yytext());}
{TARGETS}				{return new Token(TokenType.TARGETS,yyline,yycolumn,yytext());}
{PLAYER}				{return new Token(TokenType.PLAYER,yyline,yycolumn,yytext());}
{CORCHETE_A}			{return new Token(TokenType.CORCHETE_A,yyline,yycolumn,yytext());}
{CORCHETE_C}			{return new Token(TokenType.CORCHETE_C,yyline,yycolumn,yytext());}
{PARENTESIS_A}			{return new Token(TokenType.PARENTESIS_A,yyline,yycolumn,yytext());}
{PARENTESIS_C}			{return new Token(TokenType.PARENTESIS_C,yyline,yycolumn,yytext());}
{LLAVE_A}				{return new Token(TokenType.LLAVE_A,yyline,yycolumn,yytext());}
{LLAVE_C}				{return new Token(TokenType.LLAVE_C,yyline,yycolumn,yytext());}
{ENTERO}				{return new Token(TokenType.ENTERO,yyline,yycolumn,yytext());}
{DECIMAL}				{return new Token(TokenType.DECIMAL,yyline,yycolumn,yytext());}
{FLOOR}					{return new Token(TokenType.FLOOR,yyline,yycolumn,yytext());}
{CEIL}					{return new Token(TokenType.CEIL,yyline,yycolumn,yytext());}
{NOMBRE}				{return new Token(TokenType.NOMBRE,yyline,yycolumn,yytext());}
{SUMA}					{return new Token(TokenType.SUMA,yyline,yycolumn,yytext());}
{RESTA}					{return new Token(TokenType.RESTA,yyline,yycolumn,yytext());}
{MULTIPLICACION}		{return new Token(TokenType.MULTIPLICACION,yyline,yycolumn,yytext());}
{DIVISION}				{return new Token(TokenType.DIVISION,yyline,yycolumn,yytext());}
{COLOR}					{return new Token(TokenType.COLOR,yyline,yycolumn,yytext());}
{DOSPUNTOS}				{return new Token(TokenType.DOSPUNTOS,yyline,yycolumn,yytext());}
{COMA}					{return new Token(TokenType.COMA,yyline,yycolumn,yytext());}
{COMILLAS}				{return new Token(TokenType.COMILLAS,yyline,yycolumn,yytext());}
{WhiteSpace}			{/*Ignorar*/}
[^]   					{return new Token(TokenType.ERROR,yyline,yycolumn,yytext()); }
