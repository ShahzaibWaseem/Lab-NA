function derivative = threePointBackwardDifference(x, y, value)
    index = find(x == value);
    h = x(2) - x(1);       % Common Difference
    
    derivative = (3*y(index) + y(index - 2) - 4*y(index - 1))/(2*h);
end