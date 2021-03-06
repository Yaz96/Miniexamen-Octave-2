function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

sumaux = 0;
for i =1 : m  %sumatoria
  
  sumaux = sumaux + ( y(i)* log(sigmoid(dot(theta,X(i,:))) )  + (1-y(i))* log(1- sigmoid(dot(theta,X(i,:)))) ) ;
  
  
endfor

sumaux = - sumaux;


aux = 0;

for n =2 :  size(theta)   % Regularizacion 
 
  aux = aux  + theta(n)**2 ;
endfor



sumaux= sumaux/m + lambda*aux/(2*m);


J = sumaux; 

alpha = 1.0;


temptheta = zeros(size(theta));

for sum = 1 : m
 
  temptheta(1) = temptheta(1) +  (( sigmoid(dot(theta,X(sum,:))) - y(sum)) ) ;
endfor

temptheta(1) = alpha*temptheta(1) / m;

for i = 2 : size(theta) %iterador atravez de las thetas
  
  
  for sum = 1 : m
  temptheta(i) = temptheta(i) + (( sigmoid(dot(theta,X(sum,:))) - y(sum))*X(sum,i) ) ;
endfor

temptheta(i) = alpha*( temptheta(i)/m + (theta(i)*lambda)/m) ; 
  
  
  
endfor

grad = temptheta;





% =============================================================

end
