ALL=plantilla.ps sya.ps partesLogicasCompilador.ps
ALL2= \
ShuntingYardAlgorithm-parentesis.ps	\
ShuntingYardAlgorithm-operació.ps	\
ShuntingYardAlgorithm.ps

plantilla.ps: plantilla.ms
	groff plantilla.ms -p -ms > plantilla.ps
sya.ps: sya.ms
	groff sya.ms -p -ms > sya.ps
partesLogicasCompilador.ps: partesLogicasCompilador.ms
	groff partesLogicasCompilador.ms -p -ms > partesLogicasCompilador.ps
all: $(ALL)

# http://mtorrest.sitios.ing.uc.cl/downloads/latex/flowchart.pdf
ShuntingYardAlgorithm-parentesis.ps: ShuntingYardAlgorithm-parentesis.ms
	groff -ms -e -p ShuntingYardAlgorithm-parentesis.ms > ShuntingYardAlgorithm-parentesis.ps
ShuntingYardAlgorithm-operació.ps: ShuntingYardAlgorithm-operació.ms
	groff -ms -e -p ShuntingYardAlgorithm-operació.ms > ShuntingYardAlgorithm-operació.ps
ShuntingYardAlgorithm.ps: ShuntingYardAlgorithm.ms
	groff -ms -e -p ShuntingYardAlgorithm.ms > ShuntingYardAlgorithm.ps
cercle.ps: cercle.ms
	groff -ms -p cercle.ms > cercle.ps
all2: $(ALL2)
