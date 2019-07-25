function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

epart = exp(-1 * z); % e^-z
g = 1 ./ (1 + epart);

% =============================================================

end
