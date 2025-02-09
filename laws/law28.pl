% 28. If a chieftain or a man be caught in the misfortune of a king, 
% if his son is able to enter into possession, then the field and garden shall be given to him,
%  he shall take over the fee of his father.

reward(Son,asset(field)) :-
    captured_in_battle(Father),
    son_able_to_enter_possession(Son),
    field_and_garden_given_to_son(Father,Son).

