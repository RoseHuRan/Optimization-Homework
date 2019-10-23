% %% Problem 4
% 
% A = [1 1 1 0 0;
%     0 0 0 1 1;
%     1 0 1 0 1;
%     1 1 1 1 0;
%     0 1 0 1 1];
% p = [0.75; 0.35; 0.40; 0.75; 0.65];
% q = [10; 5; 10; 10; 5];
% n = 5;
% 
% cvx_begin quiet 
% variables x(n) t;
%     maximize (t - p'*x)
%     subject to 
%         0 <= x <= q;
%         t * ones(n,1) <= A'*x
% cvx_end 
% 
% x
% t
% optval = cvx_optval

%% Problem 5

a = [1 1 -1;
    -1 1 7;
    -1 0 11;
    -1 -1 18;
    1 -1 6;
    0 -1 10;
    0 1 0;
    1 0 0];
b = [sqrt(2); sqrt(2); 1; sqrt(2); sqrt(2); 1; 1; 1]

cvx_begin quiet
variables y(2) r;
    maximize r
    subject to
        a * [y(1);y(2);1] >= b * r
        r >= 0
cvx_end

y
optval = cvx_optval


