% 18. If the slave will not give the name of the master, 
% the finder shall bring him to the palace; 
% a further investigation must follow, 
% and the slave shall be returned to his master.

deliver_to_palace(finder,Slave) :-
        runaway_slave(Slave),
        enslaved_by(Slave,Owner),
        find_runaway_slave(finder,Slave),
        \+ gives_name(Slave,Owner).

% TODO: a further investigation must follow, and the slave shall be returned to his master.
