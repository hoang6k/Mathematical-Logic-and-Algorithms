path(x1, x2).
path(x2, x3).
path(x4, x2).

kpath(X, Y) :- path(X, Y).
kpath(X, Y) :- path(X, Z), kpath(Z, Y).
