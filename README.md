# lex-programs
simple codes in lex
The lex utility generates C programs to be used in lexical processing of character input, and that can be used as an interface to yacc. The C programs are generated from lex source code and conform to the ISO C standard. Usually, the lex utility writes the program it generates to the file lex.yy.c. The state of this file is unspecified if lex exits with a non-zero exit status. See extended description for a complete description of the lex input language.
When lex.yy.c is compiled and linked with the lex library (using the -ll operand with c89 or cc), the resulting program reads character input from the standard input and partitions it into strings that match the given expressions.

When an expression is matched, these actions occur:

The input string that was matched is left in yytext as a null-terminated string; yytext is either an external character array or a pointer to a character string. The type can be explicitly selected using the %array or %pointer declarations, but the default is %array.
The external integer yyleng is set to the length of the matching string.
The expression's corresponding program fragment, or action, is executed.
During pattern matching, lex searches the set of patterns for the single longest possible match. Among rules that match the same number of characters, the rule given first is chosen.

The general format of lex source is:

Definitions %% Rules %% User Subroutines
The first %% is required to mark the beginning of the rules (regular expressions and actions); the second %% is required only if user subroutines follow.

Any line in the "Definitions in lex" section beginning with a blank character will be assumed to be a C program fragment and will be copied to the external definition area of the lex.yy.c file. Similarly, anything in the "Definitions in lex" section included between delimiter lines containing only %{ and %} is also copied unchanged to the external definition area of the lex.yy.c file.

Any such input (beginning with a blank character or within %{ and %} delimiter lines) appearing at the beginning of the "Rules" section before any rules are specified will be written to lex.yy.c after the declarations of variables for the yylex function and before the first line of code in yylex. Thus, user variables local to yylex can be declared here, and application code to execute upon entry to yylex.

The action taken by lex when encountering any input beginning with a blank character or within %{ and %} delimiter lines appearing in the "Rules" section but coming after one or more rules is undefined. The presence of such input may result in an erroneous definition of the yylex function.
