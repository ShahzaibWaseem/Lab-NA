function integral = trapezoidal(x, f)
    integral = f(1);
    n = length(x);
    h = (x(n) - x(1))/n;
    
    for i = 2 : n-1,
       integral = integral + (2 * f(i));
    end
    integral = integral + f(n);
    integral = integral * (h/2);
end