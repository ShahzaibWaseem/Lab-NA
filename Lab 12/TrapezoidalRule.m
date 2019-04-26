function approx = TrapezoidalRule(f, range)
    figure, hold on
    approx = zeros(1,7);    %initialize vector of results
    colors = ['b', 'k', 'r', 'g', 'y', 'c', 'm',];
    
    for j = 1:7,
        n = 2^j;
        x = (range(1) : 1/n : range(2));
        func = polyval(f, x);
        plot(x, func, colors(j))
        approx(j) = trapezoidalIntegral(x, func);
    end
end