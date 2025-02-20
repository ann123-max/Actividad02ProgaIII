lleva_a(vancouver,edmonton,16).
lleva_a(vancouver,calgary,13).
lleva_a(calgary,edmonton,4).
lleva_a(edmonton,saskatoon,12).
lleva_a(saskatoon,calgary,9).
lleva_a(calgary,regina,14).
lleva_a(regina,saskatoon,7).
lleva_a(regina,winnipeg,4).
lleva_a(saskatoon,winnipeg,20).
lleva_a(tin,tal,15).

conecta(A,B,_):-lleva_a(A,B,_);lleva_a(B,A,_).
llega_a(X,Y) :- conecta(X,B,_),conecta(B,Y,_).
Distancia
camino(X,Y,[X,Y],Distancia):-lleva_a(X,Y,).
