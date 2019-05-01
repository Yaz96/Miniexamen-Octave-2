function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).


for i = 1 : size(z,1)  % iteracion por renglon
  for j = 1: size(z,2) % iteracion por columna

  
g(i,j) = 1/(1+e^(-z(i,j)));


endfor
endfor
%printf(num2str(g));
% =============================================================

end
