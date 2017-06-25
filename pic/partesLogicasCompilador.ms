.PS
box "Programa" "font";
arrow "Car\(`acters" "" dashed right 1;
Ex: box "Explorador";
down;
arrow from Ex.s " S\('imbols" ljust;
An: box "Analitzador" "sint\(`actic" "i sem\(`antic";
arrow 1 " Forma interna" ljust " del programa" ljust " font" ljust;
Pr: box height 0.75 "Preparaci\('o" "per la" "generaci\('o" "del codi";
arrow;
Ge: box "Generaci\('o" "del codi";
arrow dashed;
box "Programa" "objecte";

# Ara toca fer les caixes per resumir ;)
rar=0.18;
B1: box with .nw at Ex.nw -(rar, -rar) width 0.75 + 2 * rar height 2 * rar + 3 * boxht;
"" " An\(`alisis" ljust at last box .nw;

# caixa 2
B2: box with .nw at Pr.nw -(rar, -rar) height 0.75 + 2 * boxht + 2 * rar width boxwid + 2 * rar;
"" " S\('intesis" ljust at last box .nw;

# taula d'informació
box with .nw at B1.ne + (0.5, 0) height 2 * rar + 5 * boxht + 1.75 width boxwid + 2 * rar;
"" "" "Taula" "d'informaci\('o" at last box .n;
"- Taula" "de s\('imbols"  at 1/6<last box .n, last box.s>;
"- Taula" "de constants"  at 2/6<last box .n, last box.s>;
"- Taula" "de bucles"  at 3/6<last box .n, last box.s>;
"- Altres" "taules"  at 4.5/6<last box .n, last box.s>;

# Fletxetes
right;
line 1 <-> from Ex.e dashed;
line 1 <-> from 1/3<An.ne, An.se> dashed;
line 1 <-> from Pr.e dashed;
line 1 <-> from Ge.e dashed;

# Gran caixa
#	width (1 - 2*rar) fletxa, boxwid + 2*rar, fletxa
box with .nw at `1'th box .ne + (rar, 2* rar) width 1 - 2*rar + 2*(boxwid + 2*rar) + 0.5 + rar height 4*rar + 5*boxht + 1.75;
"" " Compilador" ljust at last box .nw;
.PE
