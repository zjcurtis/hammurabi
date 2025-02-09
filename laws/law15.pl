% 15. If any one take a male or female slave of the court,
% or a male or female slave of a freed man, outside the city gates,
% he shall be put to death.

death_penalty(Transporter,transportation,Person) :-
        enslaved_by(Person,Owner),
        member(Owner, [court,freedman]),
        transported(Transporter,Person,Place),
        \+ in_city(Place).
