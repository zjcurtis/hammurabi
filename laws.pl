:- use_module(library(debug)).
:- use_module(library(lists)).


proven_crime(joshua, adultery).
accusation(joe, murder, joshua).
action(joe, ensnarement, joshua).
action(joe, ban, joshua).
action(jacob, theft, temple).
action(jeffery, receipt_stolen_goods, jacob).
capital_crime(murder).
spoke_to(joe, elders, accusation(joe, murder, joshua)).

% Predicates for specific locations
is_temple_or_court(temple).
is_temple_or_court(court).


% Law One
consequence(Actor, ensnarement, death_penalty, reason(Law, Conditions)) :-
    Law = 'Law One',
    Conditions = (
        action(Actor, ensnarement, Recipient),
        action(Actor, ban, Recipient),
        accusation(Actor, Crime, Recipient),
        \+ proven_crime(Recipient, Crime)
    ),
    call(Conditions).

% Law Three
consequence(Actor, false_charge, death_penalty, reason(Law, Conditions)) :-
    Law = 'Law Three',
    Conditions = (
        accusation(Actor, Alleged_Crime, Recipient),
        capital_crime(Alleged_Crime),
        \+ proven_crime(Recipient, Alleged_Crime)
    ),
    call(Conditions).

% Law Four
consequence(Actor, accusation(Actor,Crime,Recipient), receipt_levied_fines, reason(Law, Conditions)) :-
    Law = 'Law Four',
    Conditions = (
        spoke_to(Actor,elders,accusation(Actor,Crime,Recipient)),
        consequence(Recipient,Crime,fines_levied,_),
        proven_crime(Recipient,Crime)
    ),
    call(Conditions).


% Law Six
consequence(Actor, theft, death_penalty, reason(Law, Conditions)) :-
    Law = 'Law Six',
    Conditions = (
        action(Actor, theft, Plaintiff),
        is_temple_or_court(Plaintiff)
    ),
    call(Conditions).

consequence(Actor, receipt_stolen_goods, death_penalty, reason(Law, Conditions)) :-
    Law = 'Law Six',
    Conditions = (
        action(Thief, theft, Plaintiff),
        action(Actor, receipt_stolen_goods, Thief),
        is_temple_or_court(Plaintiff)
    ),
    call(Conditions).

% Helper predicate to check for death penalty
death_penalty(Actor, Crime) :- 
    consequence(Actor, Crime, death_penalty, _).

% Helper predicate to get reason for a consequence
reason_for_consequence(Actor, Crime, Punishment, Reason) :-
    consequence(Actor, Crime, Punishment, Reason).

% Law 36
illegal_sale(Asset,Seller,_) :-
  status(Seller,Status),
  member(Status,[chieftan,man,subject_to_quit_rent]),
  Asset = [field,garden,house].
