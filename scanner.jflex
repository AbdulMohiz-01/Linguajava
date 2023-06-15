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

// keywords = (abstract|assert|boolean|break|byte|case|catch|char|class|const|continue|default|do|double|else|enum|extends|final|finally|float|for|goto|if|implements|import|instanceof|int|interface|long|native|new|package|private|protected|public|return|short|static|strictfp|super|switch|synchronized|this|throw|throws|transient|try|void|volatile|while|true|false|null)
// terminator = (;)
// colon = (:)
// comma = (,)
// dot = (\.)
// hash = (\#)

// string_literals = \"([^\\\n]|(\\.))*?\"
// comments = \/\*(.|\n)*?\*\/
// single_line_comments = \/\/.*\n
// whitespace = [ \t\r\n]+
left_brace = \{
right_brace = \}
// left_bracket = \[
// right_bracket = \]


%%

// keywords { return new Symbol(sym.KW); }
{if} { return new Symbol(sym.IF); }
{else} { return new Symbol(sym.ELSE);}
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
single_line_comments { return new Symbol(sym.SLCOMM); }
whitespace { return new Symbol(sym.WSPACE); } */
{left_parenthesis} { return new Symbol(sym.LBRACK); }
{right_parenthesis} { return new Symbol(sym.RBRACK); }
{left_brace} { return new Symbol(sym.LCBRACK); }
{right_brace} { return new Symbol(sym.RCBRACK); }
/*left_bracket { return new Symbol(sym.LSBRACK); }
right_bracket { return new Symbol(sym.RSBRACK); }
terminator { return new Symbol(sym.TER); }
colon { return new Symbol(sym.COL); }
comma { return new Symbol(sym.COMMA); }
dot { return new Symbol(sym.DOT); }
hash { return new Symbol(sym.HASH); } */
. { System.out.println("Error:" + yytext()); }



