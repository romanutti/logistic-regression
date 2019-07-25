function plotPolynomialCurve(X_train, y_train, X_val, y_val)
%PLOTVALIDATIONCURVE Plots validation curve for train and cv set
%       PLOTVALIDATIONCURVE(X_train, y_train, X_val, y_val) Plots
%       validation curve for train and cv set
%

[grade_vec, error_train, error_val] = ...
    polynomialCurve(X_train, y_train, X_val, y_val);

nan_train = error_train((all((~isnan(error_train)),2)),:);
nan_val = error_val((all((~isnan(error_val)),2)),:);

close all;
plot(1:size(nan_train,1), nan_train, 1:size(nan_val,1), nan_val);
title('Polynomial development')
legend('Train', 'Cross Validation');
xlabel('Polynomial Grade');
ylabel('Error');

end
