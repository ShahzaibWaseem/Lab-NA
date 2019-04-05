function [derivative, error] = Task2(x, y, value)
    index = find(x == value);
    h = x(2) - x(1);       % Common Difference
    
    derivative = (y(index + 1) + y(index - 1) - 2*y(index))/(h^2);
    
    syms f(value);
    f(value) = sin(value);
    f4 = diff(f, 4);
    
    t = x(1):0.001:x(3);

    error = (h^2) * max(f4(t))/12;
end