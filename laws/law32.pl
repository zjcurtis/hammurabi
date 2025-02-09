% 32. If a chieftain or a man is captured on the "Way of the King" (in war), 
% and a merchant buy him free, and bring him back to his place; 
% if he have the means in his house to buy his freedom, he shall buy himself free: 
% if he have nothing in his house with which to buy himself free, 
% he shall be bought free by the temple of his community;
%  if there be nothing in the temple with which to buy him free, 
%  the court shall buy his freedom. 
%  His field, garden, and house shall not be given for the purchase of his freedom.

reward(Merchant,asset(money)) :-
    captured_on_way_of_king(Person),
    merchant_buys_freedom(Merchant,Person),
    merchant_brings_person_back_to_place(Merchant,Person).

% TODO: Handle who pays.