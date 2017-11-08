function dRet = Rosenbrock(X)
x = X';
Dimensions = size (X,2);
dRet = 0.0;
for i = 2 : Dimensions-1
   dRet = dRet + 100.0 * (x(i+1) - x(i - 1)^2) + (x(i - 1) - 1)^2 ;
end                
   dRet = abs(dRet);
   display(dRet);