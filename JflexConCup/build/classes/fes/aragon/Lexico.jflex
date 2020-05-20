/*Paquete e importaciones de bibliotecas*/

package fes.aragon;
import java_cup.runtime.Symbol;

%%
/*Opciones de jflex  y expresiones*/

%cupsym Simbolo
%class JLexico
%cup
%public
%unicode
%line
%char
%ignorecase

numero =[0-9]+ "."? [0-9]*
palabra =[a-zA-ZÑñ]+

%%

/*Reglas lexicas*/

"<html>"         {return new Symbol(Simbolo.ihtml, yychar,yyline); }     
"<head>"         {return new Symbol(Simbolo.ihead, yychar,yyline); }     
"<title>"        {return new Symbol(Simbolo.ititle, yychar,yyline); }     
"</title>"       {return new Symbol(Simbolo.ftitle, yychar,yyline); }     
"</head>"        {return new Symbol(Simbolo.fhead, yychar,yyline); }     
"<body>"         {return new Symbol(Simbolo.ibody, yychar,yyline); }     
"<h1>"           {return new Symbol(Simbolo.ih1, yychar,yyline); }     
"</h1>"          {return new Symbol(Simbolo.fh1, yychar,yyline); }     
"</body>"        {return new Symbol(Simbolo.fbody, yychar,yyline); }     
"</html>"        {return new Symbol(Simbolo.fhtml, yychar,yyline); }     

{numero}         {return new Symbol(Simbolo.numero, yychar,yyline,new String(yytext()));}
{palabra}        {return new Symbol(Simbolo.palabra, yychar,yyline,new String(yytext()));}

/*espacios en blanco */
[ \t\r\f\n]+       { /* Se ignoran */}

/* Cualquier otro */
.   { System.out.println("Error lexico: "+yytext()); }