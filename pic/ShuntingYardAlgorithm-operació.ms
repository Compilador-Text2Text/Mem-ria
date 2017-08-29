.EQ
delim $$;
.EN
.PS
down;
box "Recordem:" "a = t.seg\(:uent" "q qua" "s stack";
arrow;
Buit: box "s" "\('es Buit" "?";

# Cas que no és buit.
arrow " No" ljust;
box "b = s.mirar";
arrow;

# Suposant que és una operació.
Op: box "b \('es una" "operaci\('o";
arrow " S\('i" ljust;

# Part bonica?
Left: box "a associatiu" "Esquerra";

left;
line at Left.w "S\('i" above; arc; arrow;
D: box "a.preced\(`encia" "$<=$" "b.preced\(`encia";
line " No" ljust; arc ->;
move;
Push: box "s.push a";

arrow 0.75/2 at D.e "S\('i" above;
End: box "q.push s.pop";

line at Left.e "No" above; arc cw; arrow;
D: box "a.preced\(`encia" "$<$" "b.preced\(`encia";
line " No" ljust; arc cw; arrow;

arrow 0.75/2 at D.w "S\('i" above;

### Final.
down;
arrow at End.s;

## Fletxa final.
left;
line at Buit.w "S\('i" above; line;
arc;
line to (Here, Push) + (0,0.25);
arc;
arrow to Push.w;

## Qui se conecta a la mateixa.
left;
line at Op.w "No" above; line;
arc ->;
.PE
