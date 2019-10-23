% %% Problem 1(d)
% 
% cvx_begin quiet
% variables x y;
%     maximize 7.8*x + 7.1*y
%     subject to 
%         1/4*x + 1/3*y <= 90;
%         1/8*x + 1/3*y <= 80;
%         [x, y] >= 0;
% cvx_end
% 
% [x y]
% cvx_optval

%% Problem 4 

M = 100;
W = [M, 10, 12, 17, 34;
    10, M, 18, 8, 46;
    12, 18, M, 9, 27;
    17, 8, 9, M, 20;
    34, 46, 27, 20, M];

[n, ~] = size(W);

cvx_begin
variables x(n,n)
    minimize sum(sum(W .* x))
    subject to
        115 - sum(x(1,:)) + sum(x(:,1)) == 200;
        385 - sum(x(2,:)) + sum(x(:,2)) == 500;
        410 - sum(x(3,:)) + sum(x(:,3)) == 800;
        480 - sum(x(4,:)) + sum(x(:,4)) == 200;
        610 - sum(x(5,:)) + sum(x(:,5)) == 300;
        x >= 0
cvx_end
x
optval = cvx_optval

    