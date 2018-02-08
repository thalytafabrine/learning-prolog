/* populacao dos paises */
populacao(brasil, 200).
populacao(eua, 320).
populacao(canada, 35).
populacao(india, 1200).
populacao(china, 1300).
populacao(japao, 127).
populacao(russia, 142).

/* territorio dos paises */
territorio(brasil, 8).
territorio(eua, 9).
territorio(canada, 9).
territorio(india, 3).
territorio(china, 9).
territorio(japao, 1).
territorio(russia, 17).

/* densidade populacional */

densidade(X,D) :- populacao(X,P), territorio(X,T), D is P / T.
maior_densidade(X, Y, M) :- densidade(X,DX), densidade(Y,DY), DX > DY, M = X.
maior_densidade(X, Y, M) :- densidade(X,DX), densidade(Y,DY), DX < DY, M = Y.

:- initialization(main).

main :-
	repeat,
	read(X),
	read(Y),
	maior_densidade(X,Y,M),
	write(M),nl,
	halt(0).
