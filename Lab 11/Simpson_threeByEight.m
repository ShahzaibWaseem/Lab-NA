function integral = Simpson_threeByEight(x, f)
    integral = f(1);
    n = length(x);
    h = (x(n) - x(1))/n;

    for i = 2 : n-1,
        if (mod(i, 2) == 0) || (mod(i, 3) == 0),
            integral = integral + (3 * f(i));
        else
            integral = integral + (2 * f(i));
        end
    end
    integral = integral + f(n);
    integral = integral * ((3*h)/8);
end