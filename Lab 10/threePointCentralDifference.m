function derivative = threePointCentralDifference(x, y, value)
    index = find(x == value);
    h = x(2) - x(1);       % Common Difference
    
    derivative = (y(index + 1) - y(index - 1))/(2*h);
end