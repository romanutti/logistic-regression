function p = precision(theta, X, y)
%PRECISION Caluculates precision for given model
%   p = PRECISION(theta, X, y) computes the precision for a given model
%   using theta

m = size(X, 1); % Number of training examples

% You need to return the following variables correctly
pred = zeros(m, 1);
pred = (sigmoid(X * theta) >= 0.5);

pp = (pred == 1);
tp = (pp == y) & pp == 1;

pp_sum = sum(pp);
tp_sum = sum(tp);

p = tp_sum / pp_sum;

% =========================================================================


end
