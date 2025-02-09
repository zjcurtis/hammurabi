claim_of_mercantile_theft(Owner,Buyer, sale(Seller,Property,Buyer)) :-
        action(Seller, sold, Property),
        claims(Buyer, sale(Seller,Property,Buyer)),
        claims(Owner, owner(Owner, Property)).

mercantile_theft(Seller, Property,Owner,Buyer) :-
        claim_of_mercantile_theft(Owner,Buyer, sale(Seller,Property,Buyer)),
        witness(_, owner(Owner, Property)),
        witness(_, sale(Seller,Property,Buyer)).

material_fact(X) :-
        X = sale(_, _, _);
        X = owner(_, _).
        