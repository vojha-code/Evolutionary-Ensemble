function Output = Regression_WE(X,DS_PoolRegression)
DS_Length = size (DS_PoolRegression,1);
%Weighting
Weights = repmat(X,DS_Length,1);
Input = Weights.*DS_PoolRegression;
%Fusing
Output = sum(Input,2);
