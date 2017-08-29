"Acc\('o"

.EQ
delim $$;
.EN
.PS
# Errors que no se corregir per ara.
# sprintf("hola %s", 3);

# Exemples:
# circle thickness 1.5
# circle shaded "green" outline "black"
# arc cw

#################### COLUMNA PRINCIPAL ####################
down;
box "t s\('imbol (token)" "q qua" "s stack";
arrow;

# El primer while de tots.
W0: box "t" "\('es Buit" "?";
arrow " No" ljust;
box "a = t.seg\(:uent";
arrow;

# Dígit.
Number: box "a" "\('es valor o un" "identificador";
arrow " No" ljust;

# Operator.
Operator: box "a \('es una" "operaci\('o"
arrow " No" ljust;

# Left Brackets.
LeftBrackets: box "a \('es `('" "o una funci\('o";
arrow " No" ljust;

# Right Brackets.
RightBrackets: box "a \('es `)'";
arrow " No" ljust;

# Final, un error.
box "Error" "No sabem" "que \('es";

#################### Number or Identifier ####################
left;
arrow at Number.w "S\('i" above;
box "q.push a";
arc cw ->;

##################### Operació ####################
left;
arrow at Operator.w "S\('i" above;
box "Operation" "option";
arc cw ->;

##################### Left Brackets ####################
left;
arrow at LeftBrackets.w "S\('i" above;
box "s.push a";
arc cw ->;

##################### Right Brackets ####################
left;
arrow at RightBrackets.w "S\('i" above;
box "`)'" "option";
E: arc cw ->;

## Línia final !!!!!!, Pensava amb here!!
line to (W0, W0) - (1.5 + 0.75/2, 0.25);
arc cw;
arrow to W0.w;


########################################################
#################### No més tockens ####################
########################################################
line at W0.e "S\('i" above; arrow 1.25;
W1: box "s" "\('es Buit" "?";
arrow "S\('i" above;
box "Final Exit\('os";
down;
arrow at W1.s " No" ljust;
Sseguent: box "s" "seg\(:uent \('es" "`(' o func";
arrow " S\('i" ljust;
box "Error" "Par\(`entesis";
left;
arrow at Sseguent.w "No" above;
box "q.push s.pop"
up;
line at last box.n; arc cw ->;
.PE

\"# Molta mes cosa
.EQ
sum 3 to 5 2
.EN
.br
.EQ
4 = to ? 2
.EN
.br
.EQ
sum from 1 to 3
.EN

