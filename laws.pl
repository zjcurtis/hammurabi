:- use_module(library(debug)).
:- use_module(library(lists)).
:- use_module(facts).




% Law One
death_penalty(Person, ensnarement) :-
        action(Person, ensnarement, Recipient),
        action(Person, ban, Recipient),
        accusation(Person, Crime, Recipient),
        \+ proven_crime(Recipient, Crime).

% Law Two
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

% Law Six
death_penalty(Person, theft) :-
        action(Person, theft, Plaintiff),
        is_temple_or_court(Plaintiff).

death_penalty(Person, receipt_stolen_goods) :-
        action(Thief, theft, Plaintiff),
        action(Person, receipt_stolen_goods, Thief),
        is_temple_or_court(Plaintiff).

% Law 14
death_penalty(Person, stole(Person,Kidnapped)) :-
        male(Kidnapped),
        minor(Kidnapped).

% Law 16
death_penalty(Person,welcomed_into_home(Person,Slave)) :-
        fugitive(Slave),
        owner(Slaveholder,Slave),
        (status(Slaveholder,court); status(Slaveholder,freedman)),
        public_proclamation(major_domus,return_slave(Slave)),
        harbored_slave(Person,Slave).

% Law 22.
death_penalty(Person,robbery) :-
        caught(_,Person,robbery).

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

% Law Four
money_reward(Actor, accusation(Actor,Crime,Recipient)) :-
        spoke_to(Actor,elders,accusation(Actor,Crime,Recipient)),
        consequence(Recipient,Crime,fines_levied,_),
        proven_crime(Recipient,Crime).

% Law Five
civil_penalty(Judge, Case, Penalties) :-
        tried_case(Judge, Case),
        reached_decision(Judge, Case, Decision),
        presented_judgment_in_writing(Judge, Case, Decision),
        later_error_appeared(Case, Decision),
        error_through_own_fault(Judge, Case, Decision),
        set_fine(Judge, Case, OriginalFine),
        Fine is 12 * OriginalFine,
        Penalties = [pay(Fine),impeachment].

% Law 36
illegal_sale(Asset, Seller, _) :-
        status(Seller, Status),
        member(Status, [chieftan, man, subject_to_quit_rent]),
        member(Asset, [field, garden, house]).
