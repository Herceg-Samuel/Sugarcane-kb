## Sugarcane Disease and Pest Knowledge Base (KB) in Prolog

This repository contains a simple expert system built in Prolog for managing information about sugarcane diseases, their symptoms, causative pests, and recommended treatments. It allows users to query information about specific diseases, identify symptoms, find causes, and suggest appropriate pesticides.

# Getting Started

To use this knowledge base, you need a Prolog interpreter installed on your system. SWI-Prolog is the recommended choice.

# Prerequisites

Download and install SWI-Prolog.

# Usage Instructions

Save the Code: Save the provided Prolog code snippets (the rules above and your specific facts) into a single file named sugarcane_kb.pl.
Add Your Facts: Populate the file with specific facts about diseases, symptoms, pests, and controls using the predicates disease/1, symptom/2, causes/2, and controls/2. (See the Example Facts section below).

Run the Interpreter:
Open your terminal or command prompt.
Navigate to the directory where you saved sugarcane_kb.pl.
Type swipl and press Enter to start the Prolog interpreter.
Load the Knowledge Base: At the Prolog prompt (?-), load your file:

```prolog
?- [sugarcane_kb].
% or consult('sugarcane_kb.pl').
```

Start Querying: You are now ready to use the defined rules!
Knowledge Base Predicates & Rules
The knowledge base is built upon several core rules that define relationships and facilitate data retrieval:

```prolog
Predicate	Description	Example Query
symptom(Disease, Symptom)	Defines that a Symptom is associated with a Disease.	?- symptom(red_stripe, leaf_drying).
causes(Pest, Disease)	Defines that a Pest causes a specific Disease.	?- causes(early_shoot_borer, dead_heart).
controls(Pesticide, Pest)	Defines that a Pesticide controls a specific Pest.	?- controls(fungicide_spray, red_stripe_pathogen).
```

Defined Rules:
Rule Name Description Example Query
has_disease(D, S) Checks if disease D has symptom S. ?- has_disease(red_stripe, red_leaf_streaks).
disease_caused_by(D, P) Checks if disease D is caused by pest P. ?- disease_caused_by(gummosis, xanthomonas_campestris).
treats_disease(P, D) Determines if Pesticide P can treat Disease D. ?- treats_disease(Pesticide, red_stripe).
all_symptoms(D, SL) Finds a complete SymptomList for a Disease D. ?- all_symptoms(red_stripe, List).
suggest_treatment(D, P) Recommends a Pesticide P for a given Disease D. ?- suggest_treatment(red_stripe, Treatment).
describe_disease(D) Prints a formatted summary of a single Disease (used for display). ?- describe_disease(red_stripe).
list_all_diseases Prints a summary of all diseases in the KB. ?- list_all_diseases.

````

 Example Facts
You must add specific facts like these to your sugarcane_kb.pl file for the system to work:
```prolog

% Example Diseases
disease(red_stripe).
disease(gummosis).
disease(early_shoot_borer_damage).

% Symptoms (symptom(Disease, Symptom))
symptom(red_stripe, red_leaf_streaks).
symptom(red_stripe, leaf_drying).
symptom(gummosis, yellow_leaf_streaks).
symptom(early_shoot_borer_damage, dead_heart_young_plants).

% Causes (causes(Pest, Disease))
causes(red_stripe_pathogen, red_stripe).
causes(xanthomonas_campestris, gummosis).
causes(early_shoot_borer_insect, early_shoot_borer_damage).

% Controls/Treatments (controls(Pesticide, Pest))
controls(fungicide_spray, red_stripe_pathogen).
controls(biological_control, early_shoot_borer_insect).
% Assume gummosis is managed via resistant varieties, not a pesticide control fact here
````
