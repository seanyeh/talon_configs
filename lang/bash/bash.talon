mode: user.bash
mode: command
and code.language: bash
-
tag(): user.code_operators
tag(): user.code_comment
tag(): user.code_generic

^funky <user.text>$: user.code_public_function(text)

^variable <user.text>$: user.code_variable(text)
