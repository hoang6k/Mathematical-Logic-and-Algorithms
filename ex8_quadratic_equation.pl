quadratic_solver :-
    write('A = '),
    read(_A),
    A is float(_A),
%    write(A), nl,

    (   A =:= 0, write('Not a quadratic equation');

        write('B = '),
        read(_B),
        B is float(_B),
%        write(B), nl,
        write('C = '),
        read(_C),
        C is float(_C),
%        write(C), nl,
        Delta is B*B-4*A*C,

        (   Delta =:= 0, write('x = '), X is -B/(2*A), write(X);

            Delta > 0,
            write('x1 = '),
            X1 is (-B+sqrt(Delta))/(2*A),
            write(X1), nl,
            write('x2 = '),
            X2 is (-B-sqrt(Delta))/(2*A),
            write(X2);

            R is -B/(2*A), I is abs(sqrt(-Delta)/(2*A)),
            write('x1 = '), write(R), write(' + '), write(I), write('i.'), nl,
            write('x2 = '), write(R), write(' - '), write(I), write('i.')
        )
    ).
