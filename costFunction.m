function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

z = X * theta; % compute z
h = sigmoid(z);

% comupte J
cost_sum = -y' * log(h) - (1-y)' * log(1-h); % sum cost
J = 1/m * cost_sum;

% compute gradient in minimum
delta_sum = (h - y)' * X; % sum all differences
grad = (1/m) * delta_sum; % calculate costs

% =============================================================

end
