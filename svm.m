function [  ] = svm( trainingData,scores )
% Applying SVM
y = trainingData(:,2); %Obtaing y values from classfication file
y = cell2mat(y); %Converting the cell values into doubles
x = scores; %Setting our scores values to x
x=x'; %Transpossing x in order to solve for H
H = (x' * x).*(y*y'); %Finding H to plug into quadprog
b = -ones(20,1); %IDk
A = -eye(20); %IDK
f = zeros(20,1); %IDK

w = quadprog(H+eye(20)*0.001, f, A, b); %Finding w primal using the quadratic programming formula
svIdx = [1; 7; 11]; %Just for testing purposes
X=x;
Y=y;
%visualizeSVM(X,Y,w,b,svIdx)

end

