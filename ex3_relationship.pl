male(level4_man).
male(level3_man).
male(level2_man1).
male(level2_man2).
male(level1_man).

female(level2_woman1).
female(level3_woman).
female(level2_woman2).

parent(level3_man, level4_man).
parent(level3_woman, level4_man).
parent(level2_man1, level3_man).
parent(level2_woman1, level3_man).
parent(level2_man2, level3_man).
parent(level2_woman2, level3_woman).
parent(level1_man, level2_woman2).


child(Y, X) :- parent(X, Y).
mother(Y, X) :- parent(X, Y), female(Y).
father(Y, X) :- parent(X, Y), male(Y).
%sibling(Y, X) :- parent(X, Z) = parent(Y, T).


%child(level2_woman2, level1_man).
%parent(level3_man, level1_man).
%parent(level3_man, X).
%parent(X, level3_man).
