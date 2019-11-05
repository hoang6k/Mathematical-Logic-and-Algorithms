bigger(dragon, dolphin).
bigger(dolphin, dog).
bigger(dog, cat).
bigger(dog, mouse).
bigger(mouse, fly).


is_bigger(X, Y) :- bigger(X, Y).
is_bigger(X, Y) :- bigger(X, Z), is_bigger(Z, Y).
