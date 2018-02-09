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
