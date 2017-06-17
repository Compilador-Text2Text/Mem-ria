.PS
#sprintf ( "lola%g%0.3f", 0.1, 0.3 ), Serveix per a poder enviar instruccions al LaTeX, o on hagi de ser
# Les [], ho faig per deixar-ho tot correctament centrat.

# Un proces normal.
define process
{[
	B: box $1;
#	B: box color "red";
]}

# data input/output -> parallelogram
define data
{[
	B: box $1 invisible;

	# Definim els punts que usarem
	profunditat=boxht/8;
	NE: B.ne + (profunditat, 0);
	NW: B.nw + (profunditat, 0);
	SW: B.sw - (profunditat, 0);
	SE: B.se - (profunditat, 0);

	# Dibuixem la línia.
	line from NE to SE to SW to NW to NE;
]}

# Conector
{[
	B: circle $1;
]}

# Desició, if block
define decision
{[
	B: box $1 invisible;

	# Definim els punts.
]}

down;
box;
process("soy" "proceso");
box;
data("soc un data");
box;
.PE
