

% 7. If any one buy from the son or the slave of another man, 
% without witnesses or a contract, silver or gold, a male or female slave,
% an ox or a sheep, an ass or anything, or if he take it in charge, 
% he is considered a thief and shall be put to death.

death_penalty(Buyer, Buy(Buyer, Property)) :-
        action(Buyer, buy, Property),
        owns(Property, Entity),
        is_son_or_slave(Entity),
        \+ witnesses(Buyer, Property),
        \+ contract(Buyer, Property).


