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
death_penalty(Person, ensnarement) :-
    action(Person, ensnarement, Recipient),
    action(Person, ban, Recipient),
    accusation(Actor, Crime, Recipient),
    \+ proven_crime(Recipient, Crime).

% Law Two
court_transfer(house,Owner,Accuser) :-
  claims(Accuser,Owner,X),
  crime(X),
  chose_ordeal(Owner,river_ordeal),
  ordeal_result(Owner,drowned).

court_transfer(house,Accuser,Owner) :-
  claims(Accuser,Owner,X),
  crime(X),
  chose_ordeal(Owner,river_ordeal),
  ordeal_result(Owner,unhurt).

death_penalty(Person,false_claims) :-
  claims(Person,Defendant,X),
  crime(X),
  chose_ordeal(Defendant,river_ordeal),
  ordeal_result(Defendant,unhurt).

% Law Three
death_penalty(Person, false_charge) :-

        accusation(Person, Alleged_Crime, Recipient),
        capital_crime(Alleged_Crime),
        \+ proven_crime(Recipient, Alleged_Crime).

% Law Four
money_reward(Actor, accusation(Actor,Crime,Recipient)) :-
        spoke_to(Actor,elders,accusation(Actor,Crime,Recipient)),
        consequence(Recipient,Crime,fines_levied,_),
        proven_crime(Recipient,Crime).

% Law Six
death_penalty(Person, theft) :-
        action(Person, theft, Plaintiff),
        is_temple_or_court(Plaintiff).

death_penalty(Person, receipt_stolen_goods) :-
        action(Thief, theft, Plaintiff),
        action(Person, receipt_stolen_goods, Thief),
        is_temple_or_court(Plaintiff).

% Law 36
illegal_sale(Asset,Seller,_) :-
  status(Seller,Status),
  member(Status,[chieftan,man,subject_to_quit_rent]),
  Asset = [field,garden,house].
