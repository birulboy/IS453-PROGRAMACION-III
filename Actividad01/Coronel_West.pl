es_enemigo(corea_del_sur,estados_unidos).
es_estadounidense(coronel_west).
vendio_misiles(coronel_west,corea_del_sur).

es_criminal(X) :- es_estadounidense(X), es_enemigo(Z,estados_unidos), vendio_misiles(X,Z).
