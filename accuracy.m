function a = accuracy(theta, X, y)
%ACCURACY Predict whether the label is 0 or 1 using learned logistic 
%regression parameters theta and calculates accuracy
%   a = ACCURACY(theta, X, y) computes accuracy of the predictions for X 
%   using athreshold at 0.5 (i.e., if sigmoid(theta'*x) >= 0.5, predict 1)

m = size(X, 1); % Number of training examples

% You need to return the following variables correctly
p = zeros(m, 1);

p = (sigmoid(X * theta) >= 0.5);

a = mean(double(p == y)) * 100;

% =========================================================================


end
