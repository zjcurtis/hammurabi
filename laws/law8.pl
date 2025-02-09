:- use_module(library(clpz)).

% 8. If any one steal cattle or sheep, or an ass, or a pig or a goat, 
% if it belong to a god or to the court, the thief shall pay 
% thirtyfold therefor; if they belonged to a freed man of the king he shall
%  pay tenfold; if the thief has nothing with which to pay he shall be put to death.

death_penalty(Thief, Steal(Thief, Property)) :-
        action(Thief, steal, Property),
        destitute(Thief).

pay_fine(Thief, Fine) :-
        action(Thief, steal, Property),
        owns(Property, Entity),
        is_god_or_court(Entity),
        value(Property, Value),
        Fine #= Value * 30.

pay_fine(Thief, Fine) :-
        action(Thief, steal, Property),
        owns(Property, Entity),
        is_freedman_of_king(Entity),
        value(Property, Value),
        Fine #= Value * 10.
