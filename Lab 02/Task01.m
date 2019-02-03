x = -3:0.01:-2;

f = 2.*x .* cos(2.*x);
g = (x + 1) .^ 2;
plot(x, f)
hold on
plot(x, g)
hold off
title('-3 <= x <= -2')

% Task B

x = -1:0.01:0
plot(x, f)
hold on
plot(x, g)
hold off
title('-1 <= x <= 0')
