% 3-tape NDTM that recognizes L={ ww | w in {0,1}* }
q0 q4 # 3
% TRANSITIONS
% put left endmarkers on tapes #2 and #3
q0 0,#,# q1 0,S $,R $,R
q0 1,#,# q1 1,S $,R $,R
% first half of string: copy symbols on tape #2
q1 0,#,# q1 0,R 0,R #,S
q1 1,#,# q1 1,R 1,R #,S
% guess second half of string: copy symbols on tape #3
q1 0,#,# q2 0,R #,S 0,R
q1 1,#,# q2 1,R #,S 1,R
q2 0,#,# q2 0,R #,S 0,R
q2 1,#,# q2 1,R #,S 1,R
% reached end of input string: switch to compare state
q2 #,#,# q3 #,S #,L #,L
% compare strings on tapes #2 and #3
q3 #,0,0 q3 #,S 0,L 0,L
q3 #,1,1 q3 #,S 1,L 1,L
% if both strings are equal switch to final state
q3 #,$,$ q4 #,S $,S $,S
