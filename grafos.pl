lleva_a(Vancouver,Edmonton,16).
lleva_a(Vancouver,Calgary,13).
leva_a(Calgary,Edmonton,4).
lleva_a(Edmonton,Saskatoon,12).
lleva_a(Saskatoon,Calgary,9).
leva_a(Calgary,Regina,14).
leva_a(Regina,Saskatoon,7).
leva_a(Regina,Winnipeg,4).
lleva_a(Saskatoon,Winnipeg,20).

conectado(X,Y) :- lleva_a(X,Y,_).
conectado(X,Y) :- lleva_a(Y,X,_).

