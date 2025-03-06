%Actividad04
progenitor(clara,jose).
progenitor(tomas,jose).
progenitor(tomas,isabel).
progenitor(jose,ana).
progenitor(jose,patricia).
progenitor(patricia,jaime).

hombre(tomas).
hombre(jose).
hombre(jaime).

mujer(clara).
mujer(isabel).
mujer(ana).
mujer(patricia).

dif(X,Y) :- X\=Y.

%es_madre(X)
es_madre(X):- mujer(X), progenitor(X,_).



%es_padre(X)
es_padre(X) :- progenitor(X,_) , hombre(X) , !.



%es_hijo(X)
es_hijo(X) :- progenitor(_,X), !.



%hermana_de(X,Y)
hermana_de(X,Y):- mujer(X), dif(X,Y) , progenitor(Z,X), progenitor(Z,Y), !. 



%abuelo_de(X,Y)

abuelo_de(X,Y):- ( progenitor(Z,Y) , progenitor(X,Z)) , hombre(X) , !.


%abuela_de(X,Y)
abuela_de(X,Y):- ( progenitor(Z,Y) , progenitor(X,Z)) , mujer(X) , !.



%hermanos(X,Y) 
hermanos(X,Y):- dif(X,Y), progenitor(Z,X), progenitor(Z,Y). 


%tia(X,Y)
tia(X,Y) :- progenitor(Z,Y) , hermana_de(X,Z) , !.
