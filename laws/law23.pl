% 23. If the robber is not caught, 
% then shall he who was robbed claim under oath the amount of his loss; 
% then shall the community, and . . . on whose ground and territory and in 
% whose domain it was compensate him for the goods stolen.

pay_fine(Community,robbery,House) :-
        robbed(Robber,House),
        \+ caught(Robber,House),
        house_is_in_domain(House,Domain),
        domain_of_community(Domain,Community).
