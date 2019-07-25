function [theta] = trainLogisticReg(X, y, lambda)
%TRAINLOCISTICREG Trains logistic regression given a dataset (X, y) and a
%regularization parameter lambda
%   [theta] = TRAINLOGISTICREG (X, y, lambda) trains linear regression using
%   the dataset (X, y) and regularization parameter lambda. Returns the
%   trained parameters theta.
%

% Initialize Theta
initial_theta = zeros(size(X, 2), 1); 

% Create "short hand" for the cost function to be minimized
costFunction = @(t) costFunctionReg(t, X, y, lambda);

% Now, costFunction is a function that takes in only one argument
options = optimset('GradObj', 'on', 'MaxIter', 200, 'Display', 'off');

% Minimize using fminc
theta = fmincg(costFunction, initial_theta, options);

end
