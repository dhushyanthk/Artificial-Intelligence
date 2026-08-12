% Family Tree Facts

male(john).
male(robert).
male(david).
male(michael).

female(mary).
female(susan).
female(linda).
female(sarah).

% Parent relationships

parent(john, robert).
parent(mary, robert).

parent(john, susan).
parent(mary, susan).

parent(robert, david).
parent(linda, david).

parent(robert, sarah).
parent(linda, sarah).

% Rules

father(X, Y) :-
    male(X),
    parent(X, Y).

mother(X, Y) :-
    female(X),
    parent(X, Y).

grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

grandfather(X, Y) :-
    male(X),
    grandparent(X, Y).

grandmother(X, Y) :-
    female(X),
    grandparent(X, Y).

sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

/** <examples>
?- father(john, robert).
?- mother(mary, susan).
?- grandparent(john, david).
?- grandfather(john, david).
?- sibling(robert, susan).
*/