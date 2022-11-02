# Compiler Construction



Lexemes -> Tokens -> Parser -> AST -> IR -> BYTE/EXE


**Lexemes:**
Lexer convert code into lexemes.(ie. Lex/Flex)

ex:

let name = "Bob";

each individual charecter here make up a word that's meaningful, we call them lexemes.

------------------------------
| let | name | = | "Bob" | ; |
------------------------------

all the above words and letters are lexemes.


__Tokens:__

All these lexemes can be classified are categorize by Tokens.

It's just a way for us identify what's in our code so that we can easily manipulate them.

Ex:

---------------------
| let   | Keyword    |
| name  | Identifier |
| "Bob" | Literals   |
---------------------

---------------------
| = | ; |
---------------------

The above are single charecter tokens.
