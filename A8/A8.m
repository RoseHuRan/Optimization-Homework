%% A8P1
% %The gradient = x^1.7 − 1.7^x 
%  
% xl = 0;
% xr = 5;
% while xr - xl > 10^(-5) 
%     xm = 0.5 * (xl + xr)
%     if (xm^1.7 - 1.7^xm) > 0 
%         xr = xm;
%     else
%         xl = xm;
%     end
% end
% solution = xm 

%% A8P2 
% % To find the optimal solution to exp(-p) * p / (1 + exp(-p))
% % The gradient = exp(-p) * (1 + exp(-p) - p) / (1 + exp(-p))^2
% 
% pl = 0;
% pr = 10;
% phi = (3 - sqrt(5)) / 2;
% while pr - pl > 10^(-5)
%     p1 = phi * pr + (1 - phi) * pl;
%     p2 = phi * pl + (1 - phi) * pr;
%     if  exp(-p1) * p1 / (1 + exp(-p1)) <  exp(-p2) * p2 / (1 + exp(-p2))
%         pl = p1;
%     else
%         pr = p2;
%     end
% end
% solution = (pl + pr) / 2

%% A8P3

%% Objective: minimize e^(1−x1−x2) + e^(x1+x2−1) + x1^2 + x1*x2 + x2^2 + 2*x1 − 3*x2 
x = [0; 0];
epsilon = 10^(-5);
iter = 0;
alpha = 0.5;
beta = 0.5;

while norm(gradient(x)) > epsilon
    
    % Doing backtracking search
    d = gradient(x);
    t = 1;
    
    xtemp = x - t * d;
    while f(xtemp) >= f(x) - alpha * t * gradient(x)' * d 
        t = t * beta; 
        xtemp = x - t * d;
    end
       
%     % Doing exact line search
%     xl = x;
%     xr = x - 10 * gradient(x);
%     phi = (3 - sqrt(5)) / 2;
%     while norm(xr - xl) > 10^(-6)
%         x1 = phi * xr + (1 - phi) * xl;
%         x2 = phi * xl + (1 - phi) * xr;
%         if  f(x1) >  f(x2)
%             xl = x1;
%         else
%             xr = x2;
%         end
%     end
%     xtemp = (xr + xl) / 2;

    plot(x(1), x(2), '*r');
    hold on;
    plot([x(1), xtemp(1)], [x(2), xtemp(2)], '-g');
    hold on;

    iter = iter + 1
    x = xtemp
    
end

%     axis([-0.9, 0.1, -0.5, 0.1])
%     hold on;

