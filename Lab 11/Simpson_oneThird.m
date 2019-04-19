function integral = Simpson_oneThird(x, f)
    integral = f(1);
    n = length(x);
    h = (x(n) - x(1))/n;
    
    for i = 2 : n-1,
        if(mod(i, 2) == 0),
            integral = integral + (4 * f(i));
        else
            integral = integral + (2 * f(i));
        end
    end
    integral = integral + f(n);
    integral = integral * (h/3);
end