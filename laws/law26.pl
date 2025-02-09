% 26. If a chieftain or a man (common soldier), who has been ordered to go upon 
% the king's highway for war does not go, but hires a mercenary, 
% if he withholds the compensation, then shall this officer or man be put to death, 
% and he who represented him shall take possession of his house.


death_penalty(Officer,withholding_compensation,House) :-
        ordered_to_go_to_war(Officer),
        hires_mercenary(Officer,Mercenary),
        withholds_compensation(Officer,Mercenary).

reward(Mercenary,asset(house)) :-
    ordered_to_go_to_war(Officer),
    hires_mercenary(Officer,Mercenary),
    withholds_compensation(Officer,Mercenary).
