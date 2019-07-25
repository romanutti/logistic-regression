function plotLearningCurve(X_train, y_train, X_val, y_val, lambda, step)
%PLOTLEARNINGCURVE Plots learning curve for train and cv set
%       LEARNINGCURVE(X_train, y_train, X_val, y_val, lambda) Plots
%       learning curve for train and cv set
%

[error_train, error_val] = ...
    learningCurve(X_train, y_train, ...
                  X_val, y_val, ...
                  lambda, step);
   
error_train(error_train == 0) = nan;
error_val(error_val == 0 ) = nan;

nan_train = error_train((all((~isnan(error_train)),2)),:);
nan_val = error_val((all((~isnan(error_val)),2)),:);

plot(1:size(nan_train,1), nan_train, 1:size(nan_val,1), nan_val);
title('Learning curve for logistic regression')
legend('Train', 'Cross Validation')
xlabel('Number of training examples')
ylabel('Error')

end
