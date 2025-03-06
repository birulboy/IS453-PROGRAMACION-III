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

es_madre(X):- mujer(X), progenitor(X,_).




%es_padre(X)




%es_hijo(X)




hermana_de(X,Y):- mujer(X), mujer(Y), progenitor(_,X), progenitor(_,Y).




%abuelo_de(X,Y)




%abuela_de(X,Y)




%hermanos(X,Y) 




%tia(X,Y)
