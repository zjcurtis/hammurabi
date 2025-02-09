% 31. If he hire it out for one year and then return, 
% the house, garden, and field shall be given back to him, 
% and he shall take it over again.

reward(Person,asset([house,garden,field])) :-
    leaves_house(Person),
    hires_out_house(Person,NewOwner),
    returns_to_house_within_one_year(NewOwner).

