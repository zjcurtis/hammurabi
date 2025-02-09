:- use_module(library(debug)).
:- use_module(library(lists)).


% 3. If any one bring an accusation of any crime before the elders, 
% and does not prove what he has charged, he shall, 
% if it be a capital offense charged, be put to death.

death_penalty(Accuser, accusation, capital_crime, Accused) :-
        action(Accuser, accusation, Accused),
        \+ proven_crime(Accused, Crime).

