% Initial facts

fact(bird).
fact(has_wings).

% Rules

rule(can_fly) :-
    fact(bird),
    fact(has_wings).

rule(can_move) :-
    fact(bird).

% Forward chaining

forward_chaining :-
    rule(can_fly),
    write('Derived fact: can_fly'),
    nl.

forward_chaining :-
    rule(can_move),
    write('Derived fact: can_move'),
    nl.

/** <examples>
?- forward_chaining.
?- rule(can_fly).
?- rule(can_move).
*/