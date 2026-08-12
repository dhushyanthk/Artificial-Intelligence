% Towers of Hanoi

hanoi(1, From, To, _) :-
    write('Move disk 1 from '),
    write(From),
    write(' to '),
    write(To),
    nl.

hanoi(N, From, To, Aux) :-
    N > 1,
    N1 is N - 1,

    % Recursive Call 1
    hanoi(N1, From, Aux, To),

    % Move disk N
    write('Move disk '),
    write(N),
    write(' from '),
    write(From),
    write(' to '),
    write(To),
    nl,

    % Recursive Call 2
    hanoi(N1, Aux, To, From).


/** <examples>
?- hanoi(3, a, c, b).
*/