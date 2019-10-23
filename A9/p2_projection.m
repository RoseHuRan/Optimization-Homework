%% A9P2
     
%% Objective: minimize e^(x(1)+x(2)+x(3)) + x(1)^2 + 2*x(2)^2 + 3*x(3)^2 - 2*x(1) - 7*x(2) - 5*x(3) (Using Gradient Projection Method)

%% Setting initial points 
x = [4; 0; 0];

%% Setting tolerance factor epsilon
epsilon = 10^(-5);

%% Setting PA
A = [1 2 3]
I = eye(3,3)
PA = I - A'*inv(A*A')*A

%% Initialize iteration number
iter = 0;

%% Setting backtracking search parameter 
alpha = 0.5;
beta = 0.5;

%% Main Iteration
while norm(PA*gradient_p2(x)) > epsilon
    
    %% Doing backtracking search
    
    d = PA*gradient_p2(x);
    t = 1;
    
    xtemp = x - t * d;
    while f_p2(xtemp) >= f_p2(x) - alpha * t * gradient_p2(x)' * d % backtracking stopping crieterion
        t = t * beta; % update the step size
        xtemp = x - t * d;
    end
    
    %% Output the solution in each step
    iter = iter + 1
    x = xtemp
    
end