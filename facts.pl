proven_crime(joshua, adultery).
accusation(joe, murder, joshua).
action(joe, ensnarement, joshua).
action(joe, ban, joshua).
action(jacob, theft, temple).
action(jeffery, receipt_stolen_goods, jacob).
capital_crime(murder).
spoke_to(joe, elders, accusation(joe, murder, joshua)).
male(_).
minor(_).

status(benjamin,freedman).
owner(benjamin,josiah).
fugitive(josiah).
public_proclamation(major_domus,return_slave(josiah)).
welcomed_into_home(julian,josiah).
harbored_slave(julian,josiah).

caught(josiah,benjamin,robbery).

judge(hammurabi).
judge(solomon).
judge(judy).

% Cases
case(theft_case_001).
case(murder_case_002).
case(divorce_case_003).

% Facts for testing judge_penalty
tried_case(hammurabi, theft_case_001).
reached_decision(hammurabi, theft_case_001, guilty).
presented_judgment_in_writing(hammurabi, theft_case_001, guilty).
later_error_appeared(theft_case_001, guilty).
error_through_own_fault(hammurabi, theft_case_001, guilty).
set_fine(hammurabi, theft_case_001, 100).

tried_case(solomon, murder_case_002).
reached_decision(solomon, murder_case_002, not_guilty).
presented_judgment_in_writing(solomon, murder_case_002, not_guilty).
% No error appeared in Solomon's case

tried_case(judy, divorce_case_003).
reached_decision(judy, divorce_case_003, split_assets).
presented_judgment_in_writing(judy, divorce_case_003, split_assets).
later_error_appeared(divorce_case_003, split_assets).
error_through_own_fault(judy, divorce_case_003, split_assets).
set_fine(judy, divorce_case_003, 500).


% Predicates for specific locations
is_temple_or_court(temple).
is_temple_or_court(court).