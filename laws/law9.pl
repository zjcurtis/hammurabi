:- use_module(library(clpz)).
:- use_module(mercantile_helpers).

% 9. If any one lose an article, and find it in the possession of another: 
% if the person in whose possession the thing is found say "A merchant sold it to me, 
% I paid for it before witnesses," and if the owner of the thing say, 
% "I will bring witnesses who know my property," then shall the purchaser 
% bring the merchant who sold it to him, and the witnesses before whom he bought it, 
% and the owner shall bring witnesses who can identify his property. 
% The judge shall examine their testimony--both of the witnesses before whom the price was paid, 
% and of the witnesses who identify the lost article on oath. 
% The merchant is then proved to be a thief and shall be put to death. 
% The owner of the lost article receives his property, and he who bought it receives the money he paid from the estate of the merchant.

award_property(Owner, Property) :-
        merchantile_theft(_, Property,Owner,_).

award_fine(Buyer, Property) :-
        merchantile_theft(_, Property,Buyer).

death_penalty(Merchant, Steal(Merchant, Property)) :-
        merchantile_theft(Merchant, Property,_).