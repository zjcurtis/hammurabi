:- use_module(library(debug)).
:- use_module(library(lists)).
:- use_module(library(clpz)).

% 5. If a judge try a case, reach a decision, and present his judgment in writing; 
% if later error shall appear in his decision, and it be through his own fault, 
% then he shall pay twelve times the fine set by him in the case, 
% and he shall be publicly removed from the judge's bench, 
% and never again shall he sit there to render judgement.

pay_fine(Judge, Fine) :-
        action(Judge, judge, Case),
        error_through_own_fault(Judge,Case),
        consequence(Case, fine_set, Original_Fine),
        consequence(Case, fine_paid, Fine),
        Fine #= Original_Fine * 12.

remove_from_bench(Judge) :-
        action(Judge, judge, Case),
        error_through_own_fault(Judge,Case).
        
judicial_ineligibility(Judge) :-
        action(Judge, judge, Case),
        error_through_own_fault(Judge,Case).
