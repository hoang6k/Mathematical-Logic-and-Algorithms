quick_sort(List, Sorted) :- q_sort(List, [], Sorted).
q_sort([], Acc, Acc).
q_sort([H|T], Acc, Sorted) :-
    pivoting(H, T, L1, L2),
    q_sort(L1, Acc, Sorted1), q_sort(L2, [H|Sorted1], Sorted).

pivoting(H, [], [], []).
pivoting(H, [X|T], [X|L], G) :- X >= H, pivoting(H, T, L, G).
pivoting(H, [X|T], L, [X|G]) :- X < H, pivoting(H, T, L, G).

