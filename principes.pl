/*
A lista abaixo apresenta o histórico de reinado dos príncipes de Gales nos séculos 9 e 10. Os nomes estão em galês.

Rhodi: 844-878

Anarawd: 879-916

Hywel Dda: 917-950

Lago ap Idwal: 951-979

Hywal ap Ieuaf: 980-965

Cadwallon: 966-986

Maredudd: 987-999

Escreva um programa que decide quem reinou em um determinado ano. Atenção para representações dos nomes usadas nos testes: rhodi, anarawd, hywel_dda, lago_ap_idwal, hywal_ap_Ieuaf, cadwallon, maredudd
*/

principe(X, rhodi) :- (X > 843), (X =< 878).
principe(X, anarawd) :- (X > 878), (X =< 916).
principe(X, hywel_dda) :- (X > 916), (X =< 950).
principe(X, lago_ap_idwal) :- (X > 950), (X =< 979).
principe(X, hywal_ap_Ieuaf) :- (X > 979), (X =< 985).
principe(X, cadwallon) :- (X > 985), (X =< 986).
principe(X, maredudd) :- (X > 986), (X =< 999).

:- initialization(main).

main :-
	repeat,
	read(A),
	principe(A, P),
	write(P), nl,
	halt(0).
