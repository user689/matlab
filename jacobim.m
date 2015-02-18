function [x, j, c] = jacobim(A, b, n, z)
  if nargin <=3, z= 0*b; end
  D = diag(diag(A));
  j = D\(D-A);
  c = D\b;
  x = z;
  for k = 1:n
    x = j*x + c;
    fprintf(1, '%3d     ', k)
    fprintf(1, '%5.4f    ', x')
    fprintf(1, '\n')
  end
% n -- number of i terations
% z -- initial vector (default 0)
%% j -- jacobi matrix
% c -- jacobi vector
