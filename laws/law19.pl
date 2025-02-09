% 19. If he hold the slaves in his house, and they are caught there, he shall be put to death.

death_penalty(Person,harboring,Slave) :-
        
        enslaved_by(Slave,_),
        welcomed_into_home(Person,Slave),
        caught_in_house(Person,Slave).
