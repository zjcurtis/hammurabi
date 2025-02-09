:- use_module(mercantile_helpers).

% 12. If the witnesses be not at hand, then shall the judge set a limit,
% at the expiration of six months. If his witnesses have not appeared
% within the six months, he is an evil-doer, and shall bear the fine of the pending case.

pay_fine(Witness,Property) :-
        claim_of_mercantile_theft(Owner,Buyer,sale(Seller,Property,Buyer)),
        member(Claimant, [Owner,Buyer]),
        claims(Claimant,witnessed(Witness,Event)),
        material_fact(Event),
        fails_to_appear(Witness,six_months).


