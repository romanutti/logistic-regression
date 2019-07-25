function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

z = X * theta; % compute z
h = sigmoid(z);

% comupte J
cost_sum = -y' * log(h) - (1-y)' * log(1-h); % sum cost
reg_sum = (theta' * theta) - theta(1)^2;
J = (1/m * cost_sum) + (lambda/(2 * m) * reg_sum);

% compute gradient in minimum
u = ones(size(theta));
u(1) = 0;
delta_sum = X' * (h - y); % sum all differences
grad = (1 / m * delta_sum ) + (lambda / m * (theta .* u)); % calculate costs

% =============================================================

end
