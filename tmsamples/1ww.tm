% 1-tape TM that recognizes L = { ww | w in {0,1}* }
% Uses the technique of storage in the finite control
% to simplify the specification
[q0,#] [qf,#] # 1

% Accept the input string
[q0,#] # [qf,#] #,S
% Guess end of first half
[q0,#] 0 [q0,0] X,R
[q0,#] 1 [q0,1] X,R
% Nondeterministically select second half
[q0,0] 0 [q0,0] 0,R
[q0,0] 0 [q1,#] Y,L
[q0,0] 1 [q0,0] 1,R
[q0,1] 0 [q0,1] 0,R
[q0,1] 1 [q0,1] 1,R
[q0,1] 1 [q1,#] Y,L
% Return to last matched X
[q1,#] 0 [q1,#] 0,L
[q1,#] 1 [q1,#] 1,L
[q1,#] X [q2,#] X,R
% Cross 0's and 1's
[q1,#] 0 [q1,0] X,R
[q1,#] 1 [q1,1] X,R
[q1,#] Y [qm,#] Y,R
% Look for 0
[q1,0] 0 [q1,0] 0,R
[q1,0] 1 [q1,0] 1,R
[q1,0] Y [q2,0] Y,R
[q2,0] Y [q2,0] Y,R
[q2,
