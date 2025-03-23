es_hombre(X):- 
    member(X, [abraham,herbert,homero,bart,clancy]), !.

es_mujer(X):- 
    member(X,[mona,marge,lisa,maggie,jacqueline,patty,selma,ling]), !.

es_padre(X,Y):- 
    member((X,Y),
    [(homero, bart),(homero, lisa),(homero, maggie),(abraham, herbert),(abraham, homero),(clancy, marge),(clancy, patty),(clancy, selma)]).

es_madre(X,Y):- 
    member((X,Y),
    [(marge, bart),(marge, lisa),(marge, maggie),(mona, herbert),(mona, homero),(jacqueline, marge),(jacqueline, patty),(jacqueline, selma),(selma, ling)]).

