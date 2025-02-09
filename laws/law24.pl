% 24. If persons are stolen, then shall the community and . . . pay one mina of silver to their relatives.

pay_fine(Community,asset(mina_of_silver),Person) :-
        stolen(Person),
        house_is_in_domain(House,Domain),
        domain_of_community(Domain,Community).
