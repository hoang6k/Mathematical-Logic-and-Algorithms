path(a, b).
path(b, c).
path(d, b).
%path(d, e).
%path(e, f).

node(X) :- path(X,_).
node(X) :- path(_,X).
allnodes(Nodes) :- setof(X, node(X), Nodes).

adjacency(AdjM) :-
    allnodes(L),
    adjMatrix(L,L,AdjM).

adjMatrix([ ],_,[ ]).
adjMatrix([H|T],L,[Row|Rows]) :-
    row_AdjM(H,L,Row),
    adjMatrix(T,L,Rows).

row_AdjM(_,[ ],[ ]).
row_AdjM(X,[Y|Ys],[C|Cs]) :-
    (   path(X,Y)
     -> C = 1
     ;  C = 0
    ),
    row_AdjM(X,Ys,Cs).


warshall(List) :-
    select([


