function [x,fval,exitflag,output,population,score] = MyENsemble(nvars,lb,ub,Input,Target)
%% This is an auto generated MATLAB file from Optimization Tool.

%% Start with the default options
options = gaoptimset;
%% Modify options setting
options = gaoptimset(options,'CrossoverFcn', @crossovertwopoint);
options = gaoptimset(options,'Display', 'off');
[x,fval,exitflag,output,population,score] = ...
ga(@(Chrmosom)GAFitness_WE_Regression(Chrmosom,Input,Target),nvars,[],[],[],[],lb,ub,[],[],options);
