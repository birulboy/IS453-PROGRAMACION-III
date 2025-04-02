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
