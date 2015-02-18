function [x ,G, c] = gsmp(A, b, n, z)
  if nargin <=3, z= 0*b; end
  LD = tril(A);
  G = -LD\ triu(A,1);
  c = LD\b; 
  x = z;
  for i = 1:n
    x = G*x +c; 
    fprintf(1, '%3d     ', i)
    fprintf(1, '%5.5f     ', x')
    fprintf(1 , '\n')
  end
% A = [10 2 -1; 1 8 3;-2 -1 10]
% b = [7 -4 9]
% result = [1 -1 1]
