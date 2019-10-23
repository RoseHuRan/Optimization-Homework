%% A9P2 

%% Using cvx 

A = [1 2 3]

cvx_begin quiet
    variables x(3)
    minimize exp(x(1)+x(2)+x(3)) + x(1)^2 + 2*x(2)^2 + 3*x(3)^2 - 2*x(1) - 7*x(2) - 5*x(3);
    subject to 
        A*x == 4
cvx_end 

x 
cvx_opt = cvx_optval