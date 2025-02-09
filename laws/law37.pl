:- use_module(real_estate_helpers)

% 37. If any one buy the field, garden, and house of a chieftain, man, or one subject to quit-rent,
%  his contract tablet of sale shall be broken (declared invalid) and he loses his money.
%   The field, garden, and house return to their owners.

forfeit(Person,asset(money)) :-
    purchase(Person,asset(X),Seller),
    member(X,[house,garden,field]),
    owner(Seller,asset(X)),
    chieftan_man_or_subject_to_quit_rent(Seller).
