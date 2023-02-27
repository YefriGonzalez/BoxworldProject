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
%cup

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
{BRICK}					{return new Symbol(ParserSym.BRICK,yyline,yycolumn,yytext());}
{HALL}					{return new Symbol(ParserSym.HALL,yyline,yycolumn,yytext());}
{NAME}					{return new Symbol(ParserSym.NAME,yyline,yycolumn,yytext());}
{ROWS}					{return new Symbol(ParserSym.ROWS,yyline,yycolumn,yytext());}
{COLS}					{return new Symbol(ParserSym.COLS,yyline,yycolumn,yytext());}
{CONFIG}				{return new Symbol(ParserSym.CONFIG,yyline,yycolumn,yytext());}
{BOX_COLOR}				{return new Symbol(ParserSym.BOX_COLOR,yyline,yycolumn,yytext());}
{BOX_ON_TARGET_COLOR}	{return new Symbol(ParserSym.BOX_ON_TARGET_COLOR,yyline,yycolumn,yytext());}
{TARGET_COLOR}			{return new Symbol(ParserSym.TARGET_COLOR,yyline,yycolumn,yytext());}
{BRICK_COLOR}			{return new Symbol(ParserSym.BRICK_COLOR,yyline,yycolumn,yytext());}
{HALL_COLOR}			{return new Symbol(ParserSym.HALL_COLOR,yyline,yycolumn,yytext());}
{UNDEFINED_COLOR}		{return new Symbol(ParserSym.UNDEFINED_COLOR,yyline,yycolumn,yytext());}
{PLAYER_COLOR}			{return new Symbol(ParserSym.PLAYER_COLOR,yyline,yycolumn,yytext());}
{BOARD}					{return new Symbol(ParserSym.BOARD,yyline,yycolumn,yytext());}
{POSX}					{return new Symbol(ParserSym.POSX,yyline,yycolumn,yytext());}
{POSY}					{return new Symbol(ParserSym.POSY,yyline,yycolumn,yytext());}
{TYPE}					{return new Symbol(ParserSym.TYPE,yyline,yycolumn,yytext());}
{BOXES}					{return new Symbol(ParserSym.BOXES,yyline,yycolumn,yytext());}
{TARGETS}				{return new Symbol(ParserSym.TARGETS,yyline,yycolumn,yytext());}
{PLAYER}				{return new Symbol(ParserSym.PLAYER,yyline,yycolumn,yytext());}
{CORCHETE_A}			{return new Symbol(ParserSym.CORCHETE_A,yyline,yycolumn,yytext());}
{CORCHETE_C}			{return new Symbol(ParserSym.CORCHETE_C,yyline,yycolumn,yytext());}
{PARENTESIS_A}			{return new Symbol(ParserSym.PARENTESIS_A,yyline,yycolumn,yytext());}
{PARENTESIS_C}			{return new Symbol(ParserSym.PARENTESIS_C,yyline,yycolumn,yytext());}
{LLAVE_A}				{return new Symbol(ParserSym.LLAVE_A,yyline,yycolumn,yytext());}
{LLAVE_C}				{return new Symbol(ParserSym.LLAVE_C,yyline,yycolumn,yytext());}
{ENTERO}				{return new Symbol(ParserSym.ENTERO,yyline,yycolumn,yytext());}
{DECIMAL}				{return new Symbol(ParserSym.DECIMAL,yyline,yycolumn,yytext());}
{FLOOR}					{return new Symbol(ParserSym.FLOOR,yyline,yycolumn,yytext());}
{CEIL}					{return new Symbol(ParserSym.CEIL,yyline,yycolumn,yytext());}
{NOMBRE}				{return new Symbol(ParserSym.NOMBRE,yyline,yycolumn,yytext());}
{SUMA}					{return new Symbol(ParserSym.SUMA,yyline,yycolumn,yytext());}
{RESTA}					{return new Symbol(ParserSym.RESTA,yyline,yycolumn,yytext());}
{MULTIPLICACION}		{return new Symbol(ParserSym.MULTIPLICACION,yyline,yycolumn,yytext());}
{DIVISION}				{return new Symbol(ParserSym.DIVISION,yyline,yycolumn,yytext());}
{COLOR}					{return new Symbol(ParserSym.COLOR,yyline,yycolumn,yytext());}
{DOSPUNTOS}				{return new Symbol(ParserSym.DOSPUNTOS,yyline,yycolumn,yytext());}
{COMA}					{return new Symbol(ParserSym.COMA,yyline,yycolumn,yytext());}
{COMILLAS}				{return new Symbol(ParserSym.COMILLAS,yyline,yycolumn,yytext());}
{WhiteSpace}			{/*Ignorar*/}
[^]   					{return new Symbol(ParserSym.ERROR,yyline,yycolumn,yytext()); }
