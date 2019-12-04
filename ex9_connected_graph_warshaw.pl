path(x1, x2).
path(x2, x3).
path(x4, x2).
path(x4, x5).
path(x5, x6).

kpath(X, Y, _) :-
    path(X, Y);
    path(Y, X).
kpath(X, Y, L) :-
    memberchk(Z, L) is false, path(X, Z), kpath(Z, Y);
    path(Z, X), kpath(Z, Y).

isConnected([_]).
isConnected([X,Y|Tail]) :-
    kpath(X, Y),
    append([X], Tail, Rest),
    isConnected(Rest).

notContain(X, List) :- neg memberchk(X, List).h
%isConnected([x1,x2,x3,x4,x5,x6]).
