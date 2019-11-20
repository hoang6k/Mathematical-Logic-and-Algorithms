5 =:= 5.
6 =\= 2 + 4.
Q is 17 div 5.
R is 17 mod 5.
X is 17 // 5.
X is 3 / 2.
X is abs(-12.6).
X is sqrt(9).
_max is max(1,2).
_min is min(1,2).
A is round(1.2).
A is floor(1.2).
A is ceil(1.2).
A is sqrt(4).
A is 2 ^ 3.
_sin is sin(pi).
_cos is cos(pi).
_tan is tan(pi/3).

euclidean_distance((X1,Y1), (X2,Y2), _distance) :-
    _distance is sqrt((X1-X2)^2 + (Y1-Y2)^2).
