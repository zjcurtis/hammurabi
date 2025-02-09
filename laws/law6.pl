:- use_module(library(debug)).
:- use_module(library(lists)).


% If any one steal the property of a temple or of the court, 
% he shall be put to death, and also the one who receives the 
% stolen thing from him shall be put to death.

death_penalty(Thief, Steal(Thief, Property)) :-
        action(Thief, steal, Property),
        owns(Property, Entity),
        is_temple_or_court(Entity).

death_penalty(Receiver, Receive(Receiver, Property)) :-
        action(Thief, steal, Property),
        action(Receiver, receive, Property),
        owns(Property, Entity),
        is_temple_or_court(Entity).

