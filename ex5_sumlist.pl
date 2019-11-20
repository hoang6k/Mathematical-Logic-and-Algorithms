list_sum([], 0).
list_sum([Head|Tail], Sum) :-
    list_sum(Tail, Sum1),
    Sum is Head + Sum1.
