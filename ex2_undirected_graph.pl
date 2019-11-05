path(x1, x2).
path(x2, x3).
path(x4, x2).
path(x5, x3).
path(x5, x6).
path(x7, x8).

%path(X, Y) :- path(Y, X).
kpath(X, Y) :-
    path(X, Y);
    path(Y, X).
kpath(X, Y) :-
    path(X, Z), kpath(Z, Y);
    kpath(Y, Z), path(Z, X).
