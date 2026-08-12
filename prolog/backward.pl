% Facts

bird(tweety).
has_wings(tweety).
has_feathers(tweety).

% Rules

can_fly(X) :-
    bird(X),
    has_wings(X).

is_bird(X) :-
    bird(X).

has_feathers_and_wings(X) :-
    has_feathers(X),
    has_wings(X).

/** <examples>
?- can_fly(tweety).
?- is_bird(tweety).
?- has_feathers_and_wings(tweety).
?- can_fly(X).
*/