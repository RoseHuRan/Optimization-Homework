f = @(x) exp(x(1)+x(2)+x(3))+x(1)^2+2*x(2)^2+3*x(3)^2-2*x(1)-7*x(2)-5*x(3);
gradient = @(x) [exp(x(1)+x(2)+x(3))+2*x(1)-2;
                    exp(x(1)+x(2)+x(3))+4*x(2)-7;
                    exp(x(1)+x(2)+x(3))+6*x(3)-5];
hessian = @(x) [exp(x(1)+x(2)+x(3))+2 exp(x(1)+x(2)+x(3))   exp(x(1)+x(2)+x(3));
                exp(x(1)+x(2)+x(3))   exp(x(1)+x(2)+x(3))+4 exp(x(1)+x(2)+x(3));
                exp(x(1)+x(2)+x(3))   exp(x(1)+x(2)+x(3))   exp(x(1)+x(2)+x(3))+6];

W = [1 2 3];
z = 4;
            
x = [4;0;0];

epsilon = 10^(-5);

iter = 0;
alpha = 0.5;
beta = 0.5;
dk = -inv([hessian(x) W';W 0]) * [-gradient(x);0]; % If changed to gradient(x) only, then it is the gradient descent method
dk = dk(1:3);

while norm(dk) > epsilon
    t = 1;
    xtemp = x - t * dk;
    
    while f(xtemp) >= f(x) - alpha * t * gradient(x)' * dk % backtracking stopping crieterion
        t = t * beta; % update the step size
        xtemp = x - t * dk;
    end

    iter = iter + 1;
    x = xtemp;
    
    dk = -inv([hessian(x) W';W 0]) * [-gradient(x);0]; % If changed to gradient(x) only, then it is the gradient descent method
	dk = dk(1:3);
end

x_newton = x
