:- use_module(mercantile_helpers).

% 10. If the purchaser does not bring the merchant and the witnesses
%  before whom he bought the article, but its owner bring witnesses who identify it,
%   then the buyer is the thief and shall be put to death, and the owner receives the lost article.

death_penalty(Buyer,theft,Property) :-
        claim_of_mercantile_theft(_,Buyer,sale(Seller,Property,Buyer)),
        \+ witness(_, sale(Seller,Property,Buyer)),
        witness(_, owner(Owner, Property)).

award_property(Owner, Property) :-
        claim_of_mercantile_theft(Owner,Buyer,sale(Seller,Property,Buyer)),
        \+ witness(_, sale(Seller,Property,Buyer)),
        witness(_, owner(Owner, Property)).
