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

% Conexión bidireccional
conecta(A, B, D) :- lleva_a(A, B, D).
conecta(A, B, D) :- lleva_a(B, A, D).

% Verificar si se puede llegar de X a Y (recursivo)
llega_a(X, Y) :- conecta(X, Y, _).
llega_a(X, Y) :- conecta(X, Z, _), llega_a(Z, Y).
% Camino directo (caso base)
camino(X, Y, D) :- lleva_a(X, Y, D).

% Camino con paso intermedio (caso recursivo)
camino(X, Y, D) :- 
    lleva_a(X, Z, D1), 
    camino(Z, Y, D2),
    D is D1 + D2.
