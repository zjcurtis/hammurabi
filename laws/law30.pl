% 30. If a chieftain or a man leave his house, garden, and field and hires it out, 
% and some one else takes possession of his house, garden, and field and uses it for three years:
%  if the first owner return and claims his house, garden, and field, it shall not be given to him,
%   but he who has taken possession of it and used it shall continue to use it.

reward(NewOwner,asset([house,garden,field])) :-
    leaves_house(Person),
    hires_out_house(Person,NewOwner),
    uses_house_for_three_years(NewOwner).

