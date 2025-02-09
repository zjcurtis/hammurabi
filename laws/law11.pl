:- use_module(mercantile_helpers).

% 11. If the owner do not bring witnesses to identify the lost article, 
% he is an evil-doer, he has traduced, and shall be put to death.

death_penalty(Owner, evil_doer, Property) :-
        claim_of_mercantile_theft(Owner,Buyer,sale(Seller,Property,Buyer)),
        \+ witness(_, owner(Owner, Property)).
