function y = gradient_p2(x)

y1 = exp(x(1)+x(2)+x(3)) + 2*x(1) - 2;
y2 = exp(x(1)+x(2)+x(3)) + 4*x(2) - 7;
y3 = exp(x(1)+x(2)+x(3)) + 6*x(3) - 5;
y = [y1; y2; y3];

