% Graph

edge(a, b).
edge(a, c).
edge(b, d).
edge(b, e).
edge(c, f).
edge(d, g).
edge(e, g).
edge(f, g).

% Heuristic values

h(a, 6).
h(b, 4).
h(c, 5).
h(d, 2).
h(e, 3).
h(f, 1).
h(g, 0).

% Best First Search

best_first(Start, Goal, Path) :-
    search([Start], Goal, [], Path).

search([Goal|_], Goal, _, [Goal]).

search([Current|Rest], Goal, Visited, [Current|Path]) :-
    findall(
        H-Next,
        (edge(Current, Next),
         \+ member(Next, Visited),
         h(Next, H)),
        Children
    ),
    add_to_open(Children, Rest, NewOpen),
    search(NewOpen, Goal, [Current|Visited], Path).

% Add nodes according to heuristic value

add_to_open([], Open, Open).

add_to_open([H-Node|Rest], Open, NewOpen) :-
    insert(H-Node, Open, Temp),
    add_to_open(Rest, Temp, NewOpen).

insert(H-Node, [], [Node]).
insert(H-Node, [First|Rest], [Node,First|Rest]) :-
    h(Node, H1),
    h(First, H2),
    H1 =< H2.

insert(H-Node, [First|Rest], [First|NewRest]) :-
    h(Node, H1),
    h(First, H2),
    H1 > H2,
    insert(H-Node, Rest, NewRest).

/** <examples>
?- best_first(a, g, Path).
*/