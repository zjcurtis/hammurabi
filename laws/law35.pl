% 35. If any one buy the cattle or sheep which the king has given to chieftains from him, he loses his money.

forfeit(Person,asset(money)) :-
    purchase(Person,asset(X),Seller),
    member(X,[cattle,sheep]),
    chieftan(Seller),
    gift(king,asset(X),Seller).

