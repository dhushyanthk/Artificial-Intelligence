% Disease facts

disease(diabetes).
disease(anemia).
disease(hypertension).
disease(common_cold).

% Diet suggestions
diet(diabetes, 'vegetables and whole grains').
diet(diabetes, 'low-sugar fruits').

diet(anemia, 'iron-rich vegetables').
diet(anemia, 'beans and lentils').

diet(hypertension, 'low-salt foods').
diet(hypertension, 'fresh fruits and vegetables').

diet(common_cold, 'warm fluids and nutritious foods').
diet(common_cold, 'fruits rich in vitamin C').

% Rule

suggest_diet(Disease, Food) :-
    disease(Disease),
    diet(Disease, Food).

/** <examples>
?- suggest_diet(diabetes, Food).
?- suggest_diet(anemia, Food).
?- suggest_diet(hypertension, Food).
*/