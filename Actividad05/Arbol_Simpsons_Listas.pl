es_hombre(X):- 
    member(X, [abraham,herbert,homero,bart,clancy]).

es_mujer(X):- 
    member(X,[mona,marge,lisa,maggie,jacqueline,patty,selma,ling]).

es_padre(X,Y):- 
    member((X,Y),
    [(homero, bart),(homero, lisa),(homero, maggie),(abraham, herbert),(abraham, homero),(clancy, marge),(clancy, patty),(clancy, selma)]).

es_madre(X,Y):- 
    member((X,Y),
    [(marge, bart),(marge, lisa),(marge, maggie),(mona, herbert),(mona, homero),(jacqueline, marge),(jacqueline, patty),(jacqueline, selma),(selma, ling)]).

dif(A, B):- A \== B.

es_abuelo(X,Y):- es_padre(X,Z), (es_padre(Z,Y) ; es_madre(Z,Y)), es_hombre(X).
es_abuela(X,Y):- es_madre(X,Z), (es_padre(Z,Y) ; es_madre(Z,Y)), es_mujer(X).

es_hermano(X,Y):- (es_padre(Z,X) ; es_madre(Z,X)) , (es_padre(Z,Y) ; es_madre(Z,Y)) , es_hombre(X) , dif(X,Y).
es_hermana(X,Y):- (es_padre(Z,X) ; es_madre(Z,X)) , (es_padre(Z,Y) ; es_madre(Z,Y)) , es_mujer(X) , dif(X,Y).

es_tio(X,Y):- es_hermano(X,Z), (es_padre(Z,Y) ; es_madre(Z,Y)).
es_tia(X,Y):- es_hermana(X,Z), (es_padre(Z,Y) ; es_madre(Z,Y)).

es_primo(X,Y) :- (es_tio(Z,Y) ; es_tia(Z,Y)) , (es_madre(Z,X) ; es_padre(Z,X)) , es_hombre(X).
es_prima(X,Y) :- (es_tio(Z,Y) ; es_tia(Z,Y)) , (es_madre(Z,X) ; es_padre(Z,X)) , es_mujer(X).
