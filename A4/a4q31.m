
W = [0 8 7 0;
    0 0 2 4;
    0 0 0 12;
    0 0 0 0];

cvx_begin quiet
variables x(4,4) y;
maximize y
subject to
    (x.' - x)*ones(4,1) == [-y; 0; 0; y];
    x <= W;
    x >= 0
cvx_end

x
y