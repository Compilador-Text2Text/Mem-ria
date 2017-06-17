.PS
#sprintf ( "lola%g%0.3f", 0.1, 0.3 ), Serveix per a poder enviar instruccions al LaTeX, o on hagi de ser
# Les [], ho faig per deixar-ho tot correctament centrat.

myDef=1/8;
# Un proces normal.
define process
{[
	B: box $1;
]}

# data input/output -> parallelogram
define data
{[
	B: box $1 invisible;

	# Definim els punts que usarem
	profunditat=boxht*myDef;
	NE: B.ne + (profunditat, 0);
	NW: B.nw + (profunditat, 0);
	SW: B.sw - (profunditat, 0);
	SE: B.se - (profunditat, 0);

	# Dibuixem la línia.
	line from NE to SE to SW to NW to NE;
]}

# Conector
define connector
{[
	B: circle $1;
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


# Codi propiament dit
down;
box;
process("soy" "proceso");
box;
data("soc un data");
box;
decision("soc un" "romboide");
box;
preparation("soc una" "preparaci\('o")
box;
terminator("finalitzador");
box;
sprintf ("myDef %g", myDef) at last box .c;
.PE
