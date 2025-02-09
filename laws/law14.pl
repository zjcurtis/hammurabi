% 14. If any one steal the minor son of another, he shall be put to death.

death_penalty(Thief,steal,Person) :-
        action(Thief,steal,Person),
        minor(Person),
        male(Person).
