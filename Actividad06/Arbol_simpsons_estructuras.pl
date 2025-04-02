es_hombre(X):- 
    member(X, [hombre(abraham), hombre(herbert), hombre(homero), hombre(bart), hombre(clancy)]).

es_mujer(X):- 
    member(X, [mujer(mona), mujer(marge), mujer(lisa), mujer(maggie), mujer(jacqueline), mujer(patty), mujer(selma), mujer(ling)]).

es_padre(X,Y):- 
    member((X,Y),
    [(hombre(homero), hombre(bart)), (hombre(homero), mujer(lisa)), (hombre(homero), mujer(maggie)), 
     (hombre(abraham), hombre(herbert)), (hombre(abraham), hombre(homero)), 
     (hombre(clancy), mujer(marge)), (hombre(clancy), mujer(patty)), (hombre(clancy), mujer(selma))]).

es_madre(X,Y):- 
    member((X,Y),
    [(mujer(marge), hombre(bart)), (mujer(marge), mujer(lisa)), (mujer(marge), mujer(maggie)), 
     (mujer(mona), hombre(herbert)), (mujer(mona), hombre(homero)), 
     (mujer(jacqueline), mujer(marge)), (mujer(jacqueline), mujer(patty)), (mujer(jacqueline), mujer(selma)), 
     (mujer(selma), mujer(ling))]).

dif(A, B):- A \== B.


% Relación de abuelos
es_abuelo(X, Z) :- es_padre(X, Y), (es_padre(Y, Z) ; es_madre(Y, Z)).
es_abuela(X, Z) :- es_madre(X, Y), (es_padre(Y, Z) ; es_madre(Y, Z)).

% Relación de hermanos
es_hermano(X, Y) :- 
    es_hombre(X), dif(X,Y),
    X @< Y,  % Impide que Prolog repita la relación en orden inverso
    (es_padre(Z, X), es_padre(Z, Y));
    (es_madre(Z, X), es_madre(Z, Y)), es_hombre(X), dif(X,Y).

es_hermana(X, Y) :- 
    es_mujer(X), dif(X,Y),
    X @< Y,  % Impide que Prolog repita la relación en orden inverso
    (es_padre(Z, X), es_padre(Z, Y));
    (es_madre(Z, X), es_madre(Z, Y)), es_mujer(X), dif(X,Y).
