% Facts
can_fly(sparrow).
can_fly(eagle).
can_fly(parrot).
can_fly(crow).

cannot_fly(penguin).
cannot_fly(ostrich).

% Rule to check whether a bird can fly
check_bird(Bird) :-
    can_fly(Bird),
    write(Bird),
    write(' can fly.'),
    nl.

check_bird(Bird) :-
    cannot_fly(Bird),
    write(Bird),
    write(' cannot fly.'),
    nl.

% Initial goal
:- initialization(main).

main :-
    Bird = sparrow,
    check_bird(Bird),
    halt.