function y = gradient_p1(x)

y1 = 8*x(1)^3 + 4*x(1) + x(2) - 3;
y2 = 12*x(2)^3 + 8*x(2) + x(1) - 2;
y = [y1; y2];

