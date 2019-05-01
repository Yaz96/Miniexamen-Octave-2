function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples
alpha = 0.01;
% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

sumaux = 0;
for i =1 : m  %sumatoria
  
  sumaux = sumaux + ( y(i)* log(sigmoid(dot(theta,X(i,:))) )  + (1-y(i))* log(1- sigmoid(dot(theta,X(i,:)))) ) ;
  
  
endfor

sumaux = - sumaux/m;
J = sumaux;

temptheta = zeros(size(theta));
for i = 1 : size(theta) %iterador atravez de las thetas
  
  
  for sum = 1 : m
  %tempgrad(i+1) = theta(i+1) + 
  temptheta(i) = temptheta(i) +  alpha*(( sigmoid(dot(theta,X(sum,:))) - y(sum))*X(sum,i) ) ;
  endfor
  
  
  
endfor

grad(1) = temptheta(1);
grad(2) = temptheta(2);
grad(3) = temptheta(3);



% =============================================================

end
