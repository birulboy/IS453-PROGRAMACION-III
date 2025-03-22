% Definir hombres y mujeres usando listas
es_hombre(X):- 
    member(X, [abraham, herbert, homero, bart, clancy]).

es_mujer(X):- 
    member(X, [mona, marge, lisa, maggie, jacqueline, patty, selma, ling]).

% Relación de padres
es_padre(X,Y):- 
    member((X,Y), 
    [(homero, bart), (homero, lisa), (homero, maggie),(abraham, herbert), (abraham, homero),(clancy, marge), (clancy, patty), (clancy, selma)]).

% Relación de madres
es_madre(X,Y):- 
    member((X,Y), 
    [(marge, bart), (marge, lisa), (marge, maggie),(mona, herbert), (mona, homero),(jacqueline, marge), (jacqueline, patty), (jacqueline, selma),(selma, ling)]).

% Relación de abuelos
es_abuelo(X,Y):- 
    es_padre(X,Z), (es_padre(Z,Y) ; es_madre(Z,Y)), es_hombre(X).

% Relación de abuelas
es_abuela(X,Y):- 
    es_madre(X,Z), (es_padre(Z,Y) ; es_madre(Z,Y)), es_mujer(X).
