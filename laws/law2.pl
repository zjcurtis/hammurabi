:- use_module(library(debug)).
:- use_module(library(lists)).

% 2. If any one bring an accusation against a man, and the accused go to the river and leap into the river, 
% if he sink in the river his accuser shall take possession of his house. 
% But if the river prove that the accused is not guilty, and he escape unhurt, 
% then he who had brought the accusation shall be put to death, 
% while he who leaped into the river shall take possession of the house that had belonged to his accuser.

% TODO - refactor both award possession predicates into one

award_possession(Accuser, House) :-
        action(Accuser, accusation, Accused),
        action(Accused, river_ordeal, dies),
        owns(Accused, House).

award_possession(Accused, House) :-
        action(Accuser, accusation, Accused),
        action(Accused, river_ordeal, survives),
        owns(Accused, House).

death_penalty(Accuser, accusation, river_ordeal, Accused) :-
        action(Accuser, accusation, Accused),
        action(Accused, river_ordeal, survives).

