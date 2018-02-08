/* fatos */
passaro(joao).
peixe(pedro).
minhoca(maria).
gato(miau).
pessoa(eu).

/* regra gosta(X,Y) */
gosta(X,Y) :- passaro(X), minhoca(Y).
gosta(X,Y) :- gato(X), peixe(Y).
gosta(X,Y) :- gato(X), passaro(Y).
gosta(X,Y) :- pessoa(X), gato(Y).
gosta(X,Y) :- gato(X), pessoa(Y).

/* amigos gostam uns dos outros */
amigo(X,Y) :- gosta(X,Y), gosta(Y,X).

/* meu gato é meu amigo */
amigo(miau,eu).

come(X,Y) :- gosta(X,Y), not(pessoa(Y)), gato(X).
