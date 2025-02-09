:- use_module(real_estate_helpers)

% 36. The field, garden, and house of a chieftain, of a man, or of one subject to quit-rent, can not be sold.

invalid_sale(asset(X,1)) :-
    member(X,[house,garden,field]),
    owner(Person,asset(X,1)),
    chieftan_man_or_subject_to_quit_rent(Person).
