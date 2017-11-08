function Error = GAFitness_WE_Regression(X,Input,Target)
%Output = Regression_WE_V3(X,Input);
DS_Length = size (Input,1);
%Weighting
Weights = repmat(X,DS_Length,1);
Input = Weights.*Input;
%Fusing
Output = sum(Input,2);
%% Errors
Error = sum(sqrt((Output-Target).^2))/DS_Length;