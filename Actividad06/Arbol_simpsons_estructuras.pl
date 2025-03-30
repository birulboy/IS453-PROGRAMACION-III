% Definición de personas con su género
es_hombre(nombre(abraham)). 
es_hombre(nombre(herbert)). 
es_hombre(nombre(homero)). 
es_hombre(nombre(bart)). 
es_hombre(nombre(clancy)).

es_mujer(nombre(mona)). 
es_mujer(nombre(marge)). 
es_mujer(nombre(lisa)). 
es_mujer(nombre(maggie)). 
es_mujer(nombre(jacqueline)). 
es_mujer(nombre(patty)). 
es_mujer(nombre(selma)). 
es_mujer(nombre(ling)).

% Relación de padres
es_padre(nombre(homero), nombre(bart)).
es_padre(nombre(homero), nombre(lisa)).
es_padre(nombre(homero), nombre(maggie)).
es_padre(nombre(abraham), nombre(herbert)).
es_padre(nombre(abraham), nombre(homero)).
es_padre(nombre(clancy), nombre(marge)).
es_padre(nombre(clancy), nombre(patty)).
es_padre(nombre(clancy), nombre(selma)).

% Relación de madres
es_madre(nombre(marge), nombre(bart)).
es_madre(nombre(marge), nombre(lisa)).
es_madre(nombre(marge), nombre(maggie)).
es_madre(nombre(selma), nombre(ling)).
es_madre(nombre(mona), nombre(herbert)).
es_madre(nombre(mona), nombre(homero)).
es_madre(nombre(jacqueline), nombre(marge)).
es_madre(nombre(jacqueline), nombre(patty)).
es_madre(nombre(jacqueline), nombre(selma)).

dif(A, B):- A \== B.

% Relación de abuelos
es_abuelo(nombre(X), nombre(Z)) :- es_padre(nombre(X), nombre(Y)), (es_padre(nombre(Y), nombre(Z)) ; es_madre(nombre(Y), nombre(Z))).
es_abuela(nombre(X), nombre(Z)) :- es_madre(nombre(X), nombre(Y)), (es_padre(nombre(Y), nombre(Z)) ; es_madre(nombre(Y), nombre(Z))).

% Relación de hermanos
es_hermano(nombre(X), nombre(Y)) :- 
    es_hombre(nombre(X)),
    X @< Y,  % Impide que Prolog repita la relación en orden inverso
    (es_padre(nombre(Z), nombre(X)), es_padre(nombre(Z), nombre(Y)));
    (es_madre(nombre(Z), nombre(X)), es_madre(nombre(Z), nombre(Y))), es_hombre(nombre(X)), dif(X,Y).

es_hermana(nombre(X), nombre(Y)) :- 
    es_mujer(nombre(X)),
    X @< Y,  % Impide que Prolog repita la relación en orden inverso
    (es_padre(nombre(Z), nombre(X)), es_padre(nombre(Z), nombre(Y)));
    (es_madre(nombre(Z), nombre(X)), es_madre(nombre(Z), nombre(Y))), es_mujer(nombre(X)), dif(X,Y).
