% %% A10P2
a = [4; 4; 5; 7]
b = [1 1 1 1]

cvx_begin quiet
variables I(4) x(4,4);
    minimize sum(I)
    subject to 
        (a'*x) <= 10*I'
        b*x' == 1 
        1 >= I >= 0
        1 >= x >= 0
cvx_end

I
x
optval = cvx_optval

%% IP
% 
% cvx_solver gurobi;
% cvx_begin quiet
% integer variables I1(4) x1(4,4);
%     minimize sum(I1)
%     subject to 
%         (a'*x1) <= 10*I1'
%         b*x1' == 1
%         1 >= I1 >= 0
%         1 >= x1 >= 0
% cvx_end
% 
% I1
% x1
% opt_val = cvx_optval
