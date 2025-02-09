% 25. If fire break out in a house, and some one who comes to put 
% it out cast his eye upon the property of the owner of the house, 
% and take the property of the master of the house, 
% he shall be thrown into that self-same fire.

immolate(Person,theft,House) :-
        fire_breaks_out(House),
        during_fire(steals_from_house(Person,House)).
