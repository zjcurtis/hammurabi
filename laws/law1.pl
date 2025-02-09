:- use_module(library(debug)).
:- use_module(library(lists)).

% 1. If any one ensnare another, putting a ban upon him, 
% but he can not prove it, then he that ensnared him shall be put to death.

death_penalty(Person, ensnarement, ban, Recipient) :-
        action(Person, ensnarement, Recipient),
        action(Person, ban, Recipient),
        \+ proven_crime(Recipient, _).

