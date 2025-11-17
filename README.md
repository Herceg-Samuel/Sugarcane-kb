# Sugarcane Knowledge Base

## Important !

1. Make a pull request before making any changes.
2. Find gaps in the data.
3. Follow the general structure of things.
4. Commit your changes then push.
5. Add your resources where possible in the README file.
6. Continue making great commit messages as done.
7. Contribute.

## Sources

1. [https://plantvillage.psu.edu/topics/sugarcane/infos]
2. [https://edis.ifas.ufl.edu/publication/PP321]
3. [https://www.researchgate.net/figure/The-symptoms-of-Sugarcane-brown-stripe-in-the-susceptible-YT93-159-and-resistant_fig1_380124486]
4. [https://edis.ifas.ufl.edu/publication/PP321]
5. [https://agritech.tnau.ac.in/crop_protection/sugarcane_diseases/sugarcane_d7.html]
6. [https://agritech.tnau.ac.in/crop_protection/sugarcane_diseases/sugarcane_d7.html]
7. [https://www.researchgate.net/publication/377874204_Insect_Pests_of_Sugarcane]
8. [https://www.slideshare.net/slideshow/pests-of-sugarcane/251546608]


## Inference

```prolog

has_disease(Disease, Symptom) :-
    symptom(Disease, Symptom).

disease_caused_by(Disease, Pest) :-
    causes(Pest, Disease).

treats_disease(Pesticide, Disease) :-
    causes(Pest, Disease),
    controls(Pesticide, Pest).

all_symptoms(Disease, SymptomList) :-
    findall(S, symptom(Disease, S), SymptomList).

disease_info(Disease, Pest, Symptoms, Pesticides) :-
    causes(Pest, Disease),
    findall(S, symptom(Disease, S), Symptoms),
    findall(P, treats_disease(P, Disease), Pesticides).

suggest_treatment(Disease, Pesticide) :-
    treats_disease(Pesticide, Disease).

```

## HELPER PREDICATES

```prolog

describe_disease(Disease) :-
    disease(Disease),
    format('~n=== DISEASE: ~w ===~n', [Disease]),
    (causes(Pest, Disease) -> format('Caused by: ~w~n', [Pest]) ; format('Cause: Unknown~n')),
    format('Symptoms:~n'),
    forall(symptom(Disease, Symptom), format('  - ~w~n', [Symptom])),
    format('Treatment options:~n'),
    (findall(P, suggest_treatment(Disease, P), PList),
     PList \= [] ->
        forall(member(Pest_treat, PList), format('  - ~w~n', [Pest_treat]))
    ;   format('  - No specific treatment listed~n')),
    format('~n').

list_all_diseases :-
    format('~n=== ALL DISEASES IN KNOWLEDGE BASE ===~n'),
    forall(disease(D), describe_disease(D)).

```

