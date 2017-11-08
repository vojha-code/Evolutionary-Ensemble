function Error = GAFitness_WE_Classification(X,Input,Target)
%Output = Regression_WE_V3(X,Input);
patLength = size (Input,1);
ensembls = size (Input,2);
Output = repmat(0,patLength,1);
%Weighting
Weights = repmat(X,patLength,1);
for i = 1:patLength
countONE = 0.0;
countZERO = 0.0;
for j = 1:ensembls
if Input(i,j)== 1 %count one
countONE = Weights(j) * 1.0;
else % count zero
countZERO = Weights(j) * 1.0;
end
end
 if countONE < countZERO
Output(i) = 0; 
else 
Output(i) = 1 ;
end
end
%% Errors
Error = 1.0 - sum(~xor(Target,Output))/patLength;