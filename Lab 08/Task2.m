function [Coefficients, Value] = Task2(x, y, xi)
n=length(y)-1;
d=y;

for i=1:n
    for j=n+1:-1:i+1,
        d(j)=(d(j-1)-d(j))/(x(j-1)-x(j));
    end
    yi=d(i+1);
    for j=i:-1:1,
        yi=d(j)+(xi-x(j))*yi;
    end
    if(i == 3)
        Coefficients=d(1:i+1);
        Value=yi;
    end 
end