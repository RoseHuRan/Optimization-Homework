%% A10p3

v = [2; 1; 3; 2; 2]
B = [1 2 3]
S = [1, 1, 0;
    0, 0, 1;
    1, 0, 1;
    0, 1, 1;
    0, 1, 0]

% cvx_solver gurobi;
% cvx_begin quiet
% integer variables I(5);
%     maximize (v'*I)
%     subject to
%         I'*S <= B
%         0 <= I <= 1
% cvx_end
% 
% I
% optval = cvx_optval

%% LP

cvx_begin quiet
variables I(5);
    maximize (v'*I)
    subject to
        I'*S <= B
        0 <= I <= 1
cvx_end

I
optval = cvx_optval