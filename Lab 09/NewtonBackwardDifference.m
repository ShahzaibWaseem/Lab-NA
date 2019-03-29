function root = NewtonBackwardDifference(x, y, value)
    differenceTable = zeros(6, 7);
    h = x(2)-x(1);      % Common Difference
    
    for i = 1:6
        differenceTable(i ,1) = x(i);
        differenceTable(i ,2) = y(i);
    end
    n = 5;
    for j = 3:10
        for i = 1:n
            differenceTable(i,j) = differenceTable(i+1 , j-1)-differenceTable(i,j-1);
        end
        n = n-1;
    end
    differenceTable
    for i = 1:5
        q = (value - x(i))/h;
        if(q > 0 && q < 1)
            s = q;
        end
    end
    %s
    l = value - (s*h);
    for i = 1:6
        if(l == x(i))
            r = i;
        end
    end

    f2 = differenceTable(r,(4));
    f3 = differenceTable((r),(5));
    f4 = differenceTable((r),(6));
    
    root = ((f2)+((s+1)*(f3))+((2*s^3+9*s^2+11*s)*(f4)/(12)));
end