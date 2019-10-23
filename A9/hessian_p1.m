function y = hessian_p1(x)
y = zeros(2,2);
y(1,1) = 24*x(1)^2 + 4;
y(1,2) = 1;
y(2,1) = y(1,2);
y(2,2) = 36*x(2)^2 + 8;
