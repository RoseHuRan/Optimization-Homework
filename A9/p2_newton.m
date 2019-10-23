%% A9P2

%% Objective: minimize e^(x1+x2+x3) + x1^2 + 2*x2^2 + 3*x3^2 - 2*x1 - 7*x2 - 5*x3 (Using Newton's Method)
clc;

A = [1 2 3]
zero = [0]

%% Setting initial points
x = [4; 0; 0];

%% Setting tolerance factor epsilon
epsilon = 10^(-5);

%% Initialize iteration number
iter = 0;
alpha = 0.5;
beta = 0.5;

%% Main Iteration
dk = [1,1,1]

while norm(dk) > epsilon
    
    dk = inv([hessian_p2(x) A';A 0]) * [gradient_p2(x);0];
    dk(4,:) = [];
    t = 1;
    xtemp = x - t * dk;
    
    while f_p2(xtemp) >= f_p2(x) - alpha * t * gradient_p2(x)' * dk % backtracking stopping crieterion
        t = t * beta; % update the step size
        xtemp = x - t * dk;
    end
    
    %% Output the solution in each step
    iter = iter + 1
    x = xtemp
    
end
