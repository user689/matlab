% Program 1.1: Bisection method.
% Computes approximate solution of f(x) = 0.
% Input: inline function ,a ,b, such that.
% f(a) * f(b) <0 and tolerance tol.
% Output: Approximate solution xc.
function xc = bisect(f, a, b, tol) %tolerance = how many digits e.g: 0.001: 3digits.
if sign(f(a)) * sign(f(b)) >= 0
    error('f(a)f(b) <0 not satisfied') % ceases execution.
end
fa = f(a); % assign f(a) to variable fa.
fb = f(b);

while (b-a)/2 > tol
    c = (b+a)/2;
    fc = f(c);
    if fc == 0 % c is a solution.
        break
    end

    if sign(fc) * sign(fa) < 0 % a and c make the new interval.
        b=c; fb= fc;
    else
        a=c; fa = fc; % c and b make the new interval.
    end
end
xc = (a + b)/2; % new midpoint is best estimate.
