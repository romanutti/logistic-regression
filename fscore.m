function f = fscore(theta, X, y)
%FSCORE Caluculates fscore for given model
%   f = FSCORE(theta, X, y) computes the f score for a given model
%   using theta

p = precision(theta, X, y);
r = recall(theta, X, y);

f = 2 * ((p * r) / (p + r));

% =========================================================================


end
