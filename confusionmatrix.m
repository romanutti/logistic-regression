function cm = confusionmatrix(theta, X, y)
%CONFUSIONMATRIX Caluculates the confusion matrix for given model
%   cm = CONFUSIONMATRIX(theta, X, y) computes the confusion matrix for a given model
%   using theta

m = size(X, 1); % Number of training examples

% You need to return the following variables correctly
cm = zeros(m, 2);
pred = (sigmoid(X * theta) >= 0.5);

% True positives
tp = sum((pred == y) & pred == 1);
% False positives
fp = sum((pred ~= y) & pred == 1);
% False negatives
fn = sum((pred ~= y) & pred == 0);
% True negatives
tn = sum((pred == y) & pred == 0);

cm = [ tp fp; fn tn ];

% =========================================================================


end
