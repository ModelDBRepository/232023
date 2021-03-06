NEURON {
	POINT_PROCESS gap
	NONSPECIFIC_CURRENT i
	RANGE g, i,vgap
}
PARAMETER {
		
	g = 0.2e-03 (microsiemens)
     
}
ASSIGNED {
	i (nanoamp)
	vgap (millivolt)
	v (millivolt)
}
BREAKPOINT {
	i = (v - vgap)*g
}

