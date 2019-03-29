function [polynomial, root] = StirlingCentralDifference(x, y, value)
    length = size(x, 2);
    differnceTable = zeros(length, length+1);
    h = x(2) - x(1);    % Common Difference
    for i = 1: length
        differnceTable(i,1) = x(i);
        differnceTable(i,2) = y(i);
    end
    n = length - 1;
    for j = 3:length + 1
        for i = 1:n
            differnceTable(i, j) = differnceTable(i+1, j-1) - differnceTable(i,j-1);
        end
        n = n - 1;
    end
    differnceTable
    diffTable = differnceTable(1:length, 2:length+1);
    centralValues = zeros(length, 1);    
    for i = 1:length,
       points = nonzeros(diffTable(:, i));
       len = size(points, 1);
       if(mod(len, 2) == 1),
           central = points(int32(len)/2);
           centralValues(i) = central;
       else
           central = (points(int32(len)/2) + points(int32(len)/2 + 1))/2;
           centralValues(i) = central;
       end
    end
    %centralValues
    syms i;
    polynomial = rdivide(centralValues(1) + i*centralValues(2),factorial(0)) + rdivide(i^2*centralValues(3),factorial(2)) + rdivide(((i^3-i)*centralValues(4)),factorial(3)) + rdivide(((i^4-i^2)*centralValues(5)),factorial(4)) + rdivide(((i^5-5*i^3+16)*centralValues(6)),factorial(5)) + rdivide(((i^6-5*i^4-4*i^2)*centralValues(7)),factorial(6));
    root = subs(polynomial, value);
end