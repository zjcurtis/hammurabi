% 22. If any one is committing a robbery and is caught, then he shall be put to death.

death_penalty(Person,robbery,House) :-
        committing_robbery(Person,House),
        caught_in_house(Person,House).
