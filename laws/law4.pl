:- use_module(library(debug)).
:- use_module(library(lists)).


% Law Four - 4. If he satisfy the elders to impose a fine of grain or money,
% he shall receive the fine that the action produces.
award_fine(Person, Fine) :-
        accusation(Person, Crime, Accused),
        consequence(Accused, Crime, fines_levied, Fine).