% If any one receive into his house a runaway male or female slave of the court,
%  or of a freedman, and does not bring it out at the public proclamation of the 
%  major domus, the master of the house shall be put to death.

death_penalty(Householder,harboring,Slave) :-
        enslaved_by(Slave,Owner),
        member(Owner, [court,freedman]),
        welcomed_into_home(Person,Slave),
        head_of_household(Householder,Person),
        public_proclamation(major_domus,return_slave(Slave)),
        \+ delivers_to_justice(Householder,Slave).