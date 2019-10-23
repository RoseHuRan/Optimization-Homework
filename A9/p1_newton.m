%% Objective: minimize 2*x1^4 + 3*x2^4 + 2*x1^2 + 4*x2^2 + x1*x2 - 3*x1 - 2*x2 (Using Newton's Method)
clc;

%% Setting initial points
x = [0; 0];

%% Setting tolerance factor epsilon
epsilon = 10^(-6);

%% Initialize iteration number
iter = 0;
alpha = 0.5;
beta = 0.5;

%% Main Iteration
while norm(gradient_p1(x)) > epsilon
    
    dk = inv(hessian_p1(x)) * gradient_p1(x); % If changed to gradient(x) only, then it is the gradient descent method
	t = 1;
    xtemp = x - t * dk;
    
    while f_p1(xtemp) >= f_p1(x) - alpha * t * gradient_p1(x)' * dk % backtracking stopping crieterion
        t = t * beta; % update the step size
        xtemp = x - t * dk;
    end

    %% Output the solution in each step
    iter = iter + 1
    x = xtemp
end