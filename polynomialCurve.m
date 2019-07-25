function [grade_vec, error_train, error_val] = ...
    polynomialCurve(X, y, Xval, yval)
%LEARNINGCURVE Generates the train and cross validation set errors needed 
%to plot a learning curve
%   [error_train, error_val] = ...
%       LEARNINGCURVE(X, y, Xval, yval, lambda) returns the train and
%       cross validation set errors for a learning curve. In particular, 
%       it returns two vectors of the same length - error_train and 
%       error_val. Then, error_train(i) contains the training error for
%       i examples (and similarly for error_val(i)).
%
%   In this function, you will compute the train and test errors for
%   dataset sizes from 1 up to m. In practice, when working with larger
%   datasets, you might want to do this in larger intervals.
%

% Number of training examples
m = size(X, 1);

lambda = 0;
ncols = size(X,2);
Xtrain_input = X;
Xval_input = Xval;

grade_vec = [1 2 3 4]';

error_train = zeros(length(grade_vec), 1);
error_val   = zeros(length(grade_vec), 1);

for g = 1:length(grade_vec)
    Xtrain_cur = Xtrain_input;
    Xval_cur = Xval_input;

    for k = 1:ncols
        Xtrain_poly = polyFeatures(Xtrain_cur(:, k), g);
        Xval_poly = polyFeatures(Xval_cur(:, k), g);
    %Xtrain_poly = mapFeature(Xtrain_cur(:,1), Xtrain_cur(:,2), g);
    %Xval_poly = mapFeature(Xval_cur(:,1), Xval_cur(:,2), g);
        
    Xtrain_cur = [Xtrain_cur, Xtrain_poly ];
    Xval_cur = [Xval_cur, Xval_poly ];
    
    %Xtrain_cur = Xtrain_poly;
    %Xval_cur = Xval_poly;
            
    end
    
    [Xtrain_norm, mu, sigma] = featureNormalize(Xtrain_cur(:, 2:end));
     Xtrain_cur = [ones(size(Xtrain_cur, 1 ), 1), Xtrain_norm];
     
    [Xval_norm, mu, sigma] = featureNormalize(Xval_cur(:, 2:end));
     Xval_cur = [ones(size(Xval_cur, 1), 1), Xval_norm];
    
    theta = trainLogisticReg(Xtrain_cur,y,lambda);
    error_train(g) = costFunctionReg(theta, Xtrain_cur, y, 0);
    error_val(g) = costFunctionReg(theta, Xval_cur, yval, 0);

end

% =========================================================================

end
