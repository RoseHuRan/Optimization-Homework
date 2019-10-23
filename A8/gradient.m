function z = gradient(x)

z1 = -exp(1-x(1)-x(2)) + exp(x(1)+x(2)-1) + 2*x(1) + x(2) + 2;
z2 = -exp(1-x(1)-x(2)) + exp(x(1)+x(2)-1) + x(1) + 2*x(2) - 3;
z = [z1; z2];
