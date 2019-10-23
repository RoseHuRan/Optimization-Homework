%% A10P1
A = [10 7;
    1 1];
b = [17 12];
c = [40; 5];

%% 0
cvx_begin quiet
variable x(2);
    maximize b*x
    subject to 
        A*x <= c;
        x >= 0
cvx_end

x
optval = cvx_optval

%% 1
cvx_begin quiet
variable x(2);
    maximize b*x
    subject to 
        A*x <= c;
        x >= 0;
        x(1) <= 1
cvx_end

x
optval = cvx_optval

%% 2
cvx_begin quiet
variable x(2);
    maximize b*x
    subject to 
        A*x <= c;
        x >= 0;
        x(1) >= 2
cvx_end

x
optval = cvx_optval

%% 3
cvx_begin quiet
variable x(2);
    maximize b*x
    subject to 
        A*x <= c;
        x >= 0;
        x(1) >= 2;
        x(2) <= 2
cvx_end

x
optval = cvx_optval

% 4
cvx_begin quiet
variable x(2);
    maximize b*x
    subject to 
        A*x <= c;
        x(1) >= 2;
        x(2) >= 3
cvx_end

x
optval = cvx_optval

%% 5
cvx_begin quiet
variable x(2);
    maximize b*x
    subject to 
        A*x <= c;
        x(1) >= 2;
        x(1) <= 2;
        x(2) <= 2;       
cvx_end

x
optval = cvx_optval

%% 6
cvx_begin quiet
variable x(2);
    maximize b*x
    subject to 
        A*x <= c;
        x(1) >= 3;
        x(2) <= 2;
cvx_end

x
optval = cvx_optval

%% 7
cvx_begin quiet
variable x(2);
    maximize b*x
    subject to 
        A*x <= c;
        x(1) >= 3;
        x(2) <= 1;
    
cvx_end

x
optval = cvx_optval

%% 8
cvx_begin quiet
variable x(2);
    maximize b*x
    subject to 
        A*x <= c;
        x(1) >= 3;
        x(2) <= 2;
        x(2) >= 2
cvx_end

x
optval = cvx_optval

%% 9
cvx_begin quiet
variable x(2);
    maximize b*x
    subject to 
        A*x <= c;
        x(1) == 3;
        x(2) <= 1;
cvx_end

x
optval = cvx_optval

%% 10
cvx_begin quiet
variable x(2);
    maximize b*x
    subject to 
        A*x <= c;
        x(1) >= 4;
        x(2) <= 1;
cvx_end

x
optval = cvx_optval

