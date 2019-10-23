%% A4Q1
% 
% A = [4 6 20 1;
%     8 12 0 30;
%     130 120 150 70]
% c = [25; 40; 400]
% b = [2, 3.5, 8, 1.5]
% n = 4
% 
% cvx_begin quiet
% variable x(n);
%     minimize b*x
%     subject to 
%         A*x >= c;
%         x >= 0
% cvx_end
% 
% x
% optval = cvx_optval
    

% A = A.'
% c = c.'
% b = b.'
% m = 3
% 
% cvx_begin quiet
% variable y(m);
%     maximize c*y
%     subject to 
%         A*y <= b;
%         y >= 0
% cvx_end
% 
% y
% optval = cvx_optval

%% A4Q3

W = [0 8 7 0;
    0 0 2 4;
    0 0 0 12;
    0 0 0 0]

% cvx_begin quiet
% variables x(4,4) y;
% maximize y
% subject to
%     (x.' - x)*ones(4,1) == [-y; 0; 0; y];
%     x <= W;
%     x >= 0
% cvx_end

% x
% y

cvx_begin quiet
variables z(4,4) y(4,1);
    minimize sum(sum(W.*z))
    subject to
        z >= y*ones(1,4) - (y*ones(1,4)).';
        y(1) - y(4) == 1;
        z >= 0;
        0 <= y <= 1
cvx_end

z
optval = cvx_optval



