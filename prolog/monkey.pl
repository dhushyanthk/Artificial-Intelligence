% Monkey Banana Problem

% Initial state:
% Monkey at door
% Box at window
% Monkey on floor
% Monkey does not have bananas

initial_state(state(door, window, floor, no)).


% Rule 1: Monkey walks to the box

move(state(Monkey, Box, floor, no),
     state(Box, Box, floor, no),
     walk_to_box) :-
    Monkey \= Box.


% Rule 2: Monkey pushes the box from window to middle

move(state(window, window, floor, no),
     state(middle, middle, floor, no),
     push_box).


% Rule 3: Monkey climbs onto the box

move(state(Pos, Pos, floor, no),
     state(Pos, Pos, box, no),
     climb_box).


% Rule 4: Monkey gets the bananas

move(state(middle, middle, box, no),
     state(middle, middle, box, yes),
     get_bananas).


% Solve using visited states

solve(State, _, []) :-
    State = state(_, _, _, yes).

solve(State, Visited, [Action|Actions]) :-
    move(State, NewState, Action),
    \+ member(NewState, Visited),
    solve(NewState, [NewState|Visited], Actions).


% Start the problem

monkey_banana(Actions) :-
    initial_state(Start),
    solve(Start, [Start], Actions).


/** <examples>
?- monkey_banana(Actions).
*/