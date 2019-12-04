bubble([], Sorted) :- Sorted = [].
bubble([X], Sorted) :- Sorted = [X].
bubble([X,Y|Rest], [Y|Sorted1]) :-
	Y < X, bubble([X|Rest], Sorted1).
bubble([X,Y|Rest], [X|Sorted1]) :-
	X =< Y, bubble([Y|Rest], Sorted1).

bubble_sort([], []).
bubble_sort([X], X).
bubble_sort(List, Sorted) :-
    bubble(List, Sorted1),
    last(Sorted1, Max),
    without_last(Sorted1, Head),
    bubble_sort(Head, Sorted2),
    append(Sorted2, [Max], Sorted).


last([X], X).
last([X|Tail], L) :- last(Tail, L).

without_last([_], []).
without_last([X|L], [X|Y]) :-
    without_last(L, Y).
