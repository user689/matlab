% Newton Raphson method

x = x0
fprintf(1, '  k     ')
fprintf(1, 'y               ')
fprintf(1, 'x            ')
fprintf(1, 'f(y)')
fprintf(1, '\n')

for k=0:n
  y=x;
  x = x - f(x)/fp(x);
  fprintf(1, '%3d     ', k) % 1 == print to screen
  fprintf(1, '%5.9f     ', y)
  fprintf(1, '%5.6f     ', x)
  fprintf(1, '%5.6f     \n', f(y))
%  fprintf(1, '\n')
end
% %3d
%  3:  minimum number of digits to display
% %5.9f
% 9: 9 digits after the decimal
