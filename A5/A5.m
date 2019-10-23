A = [3 1 5 1 0 0;
    5 1 3 0 1 0;
    4 3 5 0 0 1]
c = [-200; -60; -206; 0; 0; 0]
b = [8000; 5000; 10000]

cvx_begin quiet
variables x(6)
    minimize sum(c.*x)
    subject to
        A*x == b;
        x >= 0
cvx_end

x
optval = cvx_optval
        
        
    