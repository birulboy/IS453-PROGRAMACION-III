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




hermana_de(X,Y):- mujer(X), dif(X,Y), progenitor(Z,X), progenitor(Z,Y). 





%abuelo_de(X,Y)




%abuela_de(X,Y)





hermanos(X,Y):- dif(X,Y), progenitor(Z,X), progenitor(Z,Y). 




%tia(X,Y)
