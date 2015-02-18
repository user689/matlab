function x = bisect2(f, a, b, tol)

fa = f(a);
fb = f(b);
if fa *  fb >=0
  error('condition: f(a) * f(b) <0 not met')
end

while (b-a)/2 > tol
  c = mean([b,a])
  fc = f(c)
  if fc == 0
    break
  end

  if sign(f(a)) * sign(f(c)) <0
     b= c; fb = fc;
  else
    a = c; fa = fc;
  end
end

x = mean([a,b]);
