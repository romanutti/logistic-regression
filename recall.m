function p = recall(theta, X, y)
%RECALL Caluculates recall for given model
%   p = RECALL(theta, X, y) computes the recall for a given model
%   using theta

m = size(X, 1); % Number of training examples

% You need to return the following variables correctly
pred = zeros(m, 1);
pred = (sigmoid(X * theta) >= 0.5);

pp = (pred == 1);
tp = (pp == y) & pp == 1;
ap = (y == 1);

tp_sum = sum(tp);
ap_sum = sum(ap);

p = tp_sum / ap_sum;

% =========================================================================


end
