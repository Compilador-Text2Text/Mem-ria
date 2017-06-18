.PS

myDef=1/8;
# Un process normal.
define process
{[
	B: box $1;
]}

# Desició, if block <Romboide>
define decision
{[
	B: box $1 invisible;

	# Dibuixem el romboide.
	line from B.n to B.e to B.s to B.w to B.n;
]}

# Preparar les variables
define preparation
{[
	B: box $1 invisible;

	# Definim els punts que usarem
	profunditat=boxht*myDef;
	NE: B.ne - (profunditat, 0);
	SE: B.se - (profunditat, 0);
	SW: B.sw + (profunditat, 0);
	NW: B.nw + (profunditat, 0);

	# Dibuixem la línia.
	line from B.w to NW to NE to B.e to SE to SW to B.w;
]}

define terminator
{[
	B: box $1 radius 0.2 height boxht/2;
]}

# Comença el meu dibuix.
down;
preparation("O LIFO" "P FIFO" "t toquen");
arrow;
Tnext:		decision("t = next()");
arrow " S\('i" ljust;
Number:		decision("t=" "number" "");
arrow " No" ljust;
PileAdd:	decision("t=" "function" "(");
arrow " No" ljust;
OperatorC:	decision("t.t" "operator" "");
arrow " No" ljust;

# Segona face

# Number
right; arrow from Number.e "S\('i" above; process("O.add t"); arc ->;

# Function or (
right; arrow from PileAdd.e "S\('i" above; process("P.add t"); arc ->;

# Operació
right; arrow from OperatorC.e "S\('i" above;
DOPpeek: decision("a=" "P.peek" "op");
down;
arrow " S\('i" ljust from DOPpeek.s;
DOPmenor: decision("t.p < a.p");
arrow " No" ljust;
DOPlong: decision("&" "t.p = a.p" "t.L");
right; arrow from DOPmenor.e "S\('i" above;
POPnotend: process("O.add P.pop"); arc ->;
move to (last arc .e, DOPpeek .s);
POPend: process("P.add t");
right; line from DOPpeek .e "No" above; arrow to POPend .w;
arrow from DOPlong .e "No" below; line to (POPnotend .e, last arrow); arc; arrow to POPend.s;
right;
arrow from 1/2<DOPlong.n, DOPlong.e> "S\('i" above; arc radius 0.5; arrow to (last arc .e, POPnotend .s);
.PE
