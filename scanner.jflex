import java.io.*;
import java_cup.runtime.*;
%%
%unicode
%cup

BOMDP = (\*|\/|\%)
BOPM = (\+|\-)
assignment_operators = (\=)
left_parenthesis = \(
right_parenthesis = \)
identifiers = [a-zA-Z_][a-zA-Z0-9_]*
numbers = -?(\d)+(\.(\d)+)?(e(-?(\d)+))?
compound_operators = (\+\=|\-\=|\*\=|\\\=|\%\=)
increment_decrement_operators = (\+\+|\-\-)
LOA =(\&\&)
LOO =(\|\|)
LOX =(\!)
relational_operators = (\=\=|\!\=|\<|\>|\<\=|\>\=)

if = (if)
else = (else)
for = (for)
while = (while)
do = (do)
datatypes = (int|float|double|char|boolean|String)
// function =(function)
// string_literals = \"([^\\\n]|(\\.))*?\"
// println = (println)
// comma = (,)


// keywords = (abstract|assert|boolean|break|byte|case|catch|char|class|const|continue|default|do|double|else|enum|extends|final|finally|float|for|goto|if|implements|import|instanceof|int|interface|long|native|new|package|private|protected|public|return|short|static|strictfp|super|switch|synchronized|this|throw|throws|transient|try|void|volatile|while|true|false|null)
terminator = (\;)
// colon = (:)
// dot = (\.)
// hash = (\#)

// single_line_comments = \/\/.*\n
// comments = \/\*(.|\n)*?\*\/
// whitespace = [ \t\r\n]+
left_brace = \{
right_brace = \}
// left_bracket = \[
// right_bracket = \]


%%

// keywords { return new Symbol(sym.KW); }
{if} { return new Symbol(sym.IF); }
{else} { return new Symbol(sym.ELSE);}
{for} { return new Symbol(sym.FOR); }
{while} { return new Symbol(sym.WHILE); }
{do} { return new Symbol(sym.DO); }
// {function} { return new Symbol(sym.FUNCTION); }
"true" { return new Symbol(sym.TRUE); }
"false" { return new Symbol(sym.FALSE); }
// {string_literals} { return new Symbol(sym.SLIT); }
{datatypes} { return new Symbol(sym.DATATYPE); }
{identifiers} { return new Symbol(sym.ID); }
{BOMDP} { return new Symbol(sym.BOMDP); }
{BOPM} { return new Symbol(sym.BOPM); }
{compound_operators} { return new Symbol(sym.COPER); }
{LOA} { return new Symbol(sym.LogA); }
{LOO} { return new Symbol(sym.LogO); }
{LOX} { return new Symbol(sym.LogX); }
{relational_operators} { return new Symbol(sym.ROPER); } 
{assignment_operators} { return new Symbol(sym.AOPER); }
{increment_decrement_operators} { return new Symbol(sym.IDOPER); }
// {string_literals} { return new Symbol(sym.SLIT); }*/
{numbers} { return new Symbol(sym.NUM); }
/*comments { return new Symbol(sym.COMM); }
{whitespace} { return new Symbol(sym.WSPACE); } 
single_line_comments { return new Symbol(sym.SLCOMM); }*/
{left_parenthesis} { return new Symbol(sym.LBRACK); }
{right_parenthesis} { return new Symbol(sym.RBRACK); }
{left_brace} { return new Symbol(sym.LCBRACK); }
{right_brace} { return new Symbol(sym.RCBRACK); }
{terminator} { return new Symbol(sym.TER); }
"," { return new Symbol(sym.COMMA); }
/*left_bracket { return new Symbol(sym.LSBRACK); }
right_bracket { return new Symbol(sym.RSBRACK); }
colon { return new Symbol(sym.COL); }
dot { return new Symbol(sym.DOT); }
hash { return new Symbol(sym.HASH); } */
. { System.out.println("Error:" + yytext()); }





/**
COMMANDS TO RUN THE LEXER
jflex scanner.jflex
java java_cup.MainDrawTree parser.cup
javac *.java
java Main input.txt
*/



