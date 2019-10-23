% Objective: minimize e^(x1+x2+x3) + x1^2 + 2*x2^2 + 3*x3^2 - 2*x1 - 7*x2 - 5*x3

function y = f_p2(x)
y = exp(x(1)+x(2)+x(3)) + x(1)^2 + 2*x(2)^2 + 3*x(3)^2 - 2*x(1) - 7*x(2) - 5*x(3);