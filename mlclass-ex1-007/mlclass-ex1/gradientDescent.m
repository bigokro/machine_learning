function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

%disp("Cost for iteration:");
%disp(iter);
%disp("is:");
%disp(computeCost(X, y, theta));

% The vector of hypotheses base on this theta
H = X * theta;

% Hypotheses - actual values (Vector)
Diff = H - y;

% Differences (Vector (1 x m) ) * input values (m x 2)
totalDiff = transpose(Diff) * X;

%disp("The totaDiff matrix is:");
%disp(totalDiff);

% Calculating change in Thetas (scalar * (1 x 2 matrix))
m = length(y);
deltaTheta = (alpha/m) * totalDiff;

% Transpose back to Vector
deltaTheta = transpose(deltaTheta);

%disp("The deltaTheta matrix is:");
%disp(deltaTheta);

%disp("The Theta matrix is:");
%disp(theta);

theta = theta - deltaTheta;

%disp("New theta is:");
%disp(theta);

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
