X = [0;0;0];
for k= 1:n
    for i=1:3
	x=0;
	for j=1:3
	    if j ~= i % j != i
	      x = x + ((A(i,j)/A(i,i)) * X(j,1));
	    end
	end
	xn(i,1) = -x + (b(i,1) / A(i,i));
    end
    X = xn;
    fprintf(1, '%3d     ', k)
    fprintf(1, '%5.6f     ', X')
    fprintf(1, '\n')
end
