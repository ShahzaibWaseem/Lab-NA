function [P1, P2, P3] = NewtonDividedDifference(x, y)
    polynomial = 0;
    root = 0;
    n = length(x);
    DivTable = zeros(n, n);
    DivTable(:,1) = y';
    for i=2:n,
        for j=i:n,
            DivTable(j,i) = (DivTable(j, i-1) - DivTable(j-1, i-1)) / (x(j) - x(j-i+1));
        end
    end
    DivTable
    diagVals = diag(DivTable);
    
    P1 = @(in) diagVals(1) + (in - x(1))*diagVals(2);
    P2 = @(in) P1(in) + (in - x(1))*(in - x(2))*diagVals(3);
    P3 = @(in) P2(in) + (in - x(1))*(in - x(2))*(in - x(3))*diagVals(4);
end