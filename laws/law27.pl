% 27. If a chieftain or man be caught in the misfortune of the king 
% (captured in battle), and if his fields and garden be given to another and he take possession, 
% if he return and reaches his place, his field and garden shall be returned to him, 
% he shall take it over again.





reward(Person,asset(field)) :-
    captured_in_battle(Person),
    sale(_,field,NewOwner),
    takes_possession(NewOwner,Field),
    returns_and_reaches_place(Person).
