function plotValidationCurve(X_train, y_train, X_val, y_val)
%PLOTVALIDATIONCURVE Plots validation curve for train and cv set
%       PLOTVALIDATIONCURVE(X_train, y_train, X_val, y_val) Plots
%       validation curve for train and cv set
%

[lambda_vec, error_train, error_val] = ...
    validationCurve(X_train, y_train, X_val, y_val);

close all;
plot(lambda_vec, error_train, lambda_vec, error_val);
title('Development of lambda')
legend('Train', 'Cross Validation');
xlabel('Lambda');
ylabel('Error');

end
