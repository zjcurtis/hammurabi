% 17. If any one find runaway male or female slaves in the open country 
% and bring them to their masters, the master of the slaves shall pay him two shekels of silver.

reward_fine(finder,asset(shekel,2)) :-
        runaway_slave(Slave),
        enslaved_by(Slave,Owner),
        find_runaway_slave(finder,Slave),
        deliver_to_owner(finder,Slave,Owner).
