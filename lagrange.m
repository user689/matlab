function y = lagrangep(x, xd, yd)

  n = size(xd, 2);
  k = size(x, 2);
  for j = 1:k
    for i = 1:n
	xdi = xd; xdi(i) = [];
	z(i) = prod(x(j) - xdi)/prod(xd(i)  - xdi);
    end
    y(j) = yd * z';
  end
