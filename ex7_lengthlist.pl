length_list([], 0).
length_list([Head|Tail], Length) :-
    length_list(Tail, Length1),
    Length is Length1 + 1.
