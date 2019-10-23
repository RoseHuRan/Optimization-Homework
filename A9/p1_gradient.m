%% A9P1
     
%% Objective: minimize 2*x1^4 + 3*x2^4 + 2*x1^2 + 4*x2^2 + x1*x2 − 3*x1 − 2*x2 (Using Gradient Method)

%% Setting initial points 
x = [0; 0];

%% Setting tolerance factor epsilon
epsilon = 10^(-6);

%% Initialize iteration number
iter = 0;

%% Setting backtracking search parameter 
alpha = 0.5;
beta = 0.5;

%% Main Iteration
while norm(gradient_p1(x)) > epsilon
    
    %% Doing backtracking search
    d = gradient_p1(x);
    t = 1;
    
    xtemp = x - t * d;
    while f_p1(xtemp) >= f_p1(x) - alpha * t * gradient_p1(x)' * d % backtracking stopping crieterion
        t = t * beta; % update the step size
        xtemp = x - t * d;
    end
    
    %% Output the solution in each step
    iter = iter + 1
    x = xtemp
    
end