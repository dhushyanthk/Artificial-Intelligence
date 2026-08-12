% Symptoms

symptom(fever).
symptom(cough).
symptom(sore_throat).
symptom(headache).
symptom(runny_nose).

% Diagnosis rules

diagnosis(common_cold) :-
    symptom(cough),
    symptom(runny_nose),
    symptom(sore_throat).

diagnosis(flu) :-
    symptom(fever),
    symptom(cough),
    symptom(headache).

diagnosis(throat_infection) :-
    symptom(fever),
    symptom(sore_throat).

% Advice

advice(common_cold, 'Rest and drink plenty of fluids.').
advice(flu, 'Rest and seek medical advice if symptoms are severe.').
advice(throat_infection, 'Consult a healthcare professional.').

/** <examples>
?- diagnosis(flu).
?- diagnosis(Disease).
?- advice(flu, Advice).
*/