es_hombre(abraham). es_hombre(herbert). es_hombre(homero). es_hombre(bart). es_hombre(clancy).
es_mujer(mona). es_mujer(marge). es_mujer(lisa). es_mujer(maggie). es_mujer(jacqueline). es_mujer(patty). es_mujer(selma). es_mujer(ling).

es_padre(homero, bart).
es_padre(homero, lisa).
es_padre(homero, maggie).
es_padre(abraham, herbert).
es_padre(abraham, homero).
es_padre(clancy, marge).
es_padre(clancy, patty).
es_padre(clancy, selma).

es_madre(marge, bart).
es_madre(marge, lisa).
es_madre(marge, maggie).
es_madre(mona, herbert).
es_madre(mona, homero).
es_madre(jacqueline, marge).
es_madre(jacqueline, patty).
es_madre(jacqueline, selma).
es_madre(selma, ling).

es_abuelo(X,Z) :- es_padre(X,Y), (es_padre(Y,Z);es_madre(Y,Z)).
es_abuela(X,Z) :- es_madre(X,Y), (es_padre(Y,Z);es_madre(Y,Z)).
es_hermana(X,Z) :- (es_madre(Y,X) ; es_padre(Y,X)) , (es_madre(Y,Z) ; es_padre(Y,Z)), es_mujer(X), X \== Z.
es_hermano(X,Z) :- (es_madre(Y,X) ; es_padre(Y,X)) , (es_madre(Y,Z) ; es_padre(Y,Z)), es_hombre(X), X \== Z.
es_tio(X,Z) :-  es_hombre(X), es_hermano(X,Y), (es_padre(Y,Z);es_madre(Y,Z)).
es_tia(X,Z) :-  es_mujer(X), es_hermana(X,Y), (es_padre(Y,Z);es_madre(Y,Z)).
es_primo(X,Z) :- (es_tio(Y,Z) ; es_tia(Y,Z)) ,  (es_madre(Y,X) ; es_padre(Y,X)), es_hombre(X).
es_prima(X,Z) :- (es_tio(Y,Z) ; es_tia(Y,Z)) ,  (es_madre(Y,X) ; es_padre(Y,X)), es_mujer(X).
