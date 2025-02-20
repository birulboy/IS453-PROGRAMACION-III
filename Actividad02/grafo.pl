conexion_directa(vancouver,edmonton,16).
conexion_directa(vancouver,calgary,13).

conexion_directa(calgary,edmonton,4).
conexion_directa(calgary,regina,14).

conexion_directa(edmonton,saskatoon,12).

conexion_directa(saskatoon,calgary,9).
conexion_directa(saskatoon,winnipeg,20).

conexion_directa(regina,saskatoon,7).
conexion_directa(regina,winnipeg,4).


existe_conexion(X,Y) :- conexion_directa(X,Y,_).
existe_aristas(X):- conexion_directa(X,_,_).
posible_viajar(X,Z):- conexion_directa(X,Z,_).
posible_viajar(X,Z):- conexion_directa(X,Y,_), posible_viajar(Y,Z).

conexion_regina(X,Z) :- conexion_directa(regina,X,Z).
costo_viaje(X,Z,C) :- conexion_directa(X,Y,Costo1) , conexion_directa(Y,Z,Costo2), C is Costo1 + Costo2.
