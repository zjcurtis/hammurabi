% 20. If the slave that he caught run away from him, then shall he swear to the owners of the slave, and he is free of all blame.

not_guilty(Person,harboring,Slave) :-
        runaway_slave(Slave),
        enslaved_by(Slave,Owner),
        captures(Person,Slave),
        flees_from_captor(Person,Slave),
        swears_oath(Person,Owner).
