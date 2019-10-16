% 2-tape TM that peforms unary complement
% on a binary string
% HEADER
% <start> <final> <blank> <# tapes>
q0 q1 # 1
% TRANSITIONS
% <state> <read_syms> <new_st> <moves>
% where <moves>::= (<symbol>,<direction>)+
q0 0 q0 1,R
q0 1 q0 0,R
q0 # q1 #,S
