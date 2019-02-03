syms x
f = cos(x)
p1 = taylor(f, x, 'Order', 2);
p2 = taylor(f, x, 'Order', 4);
p3 = taylor(f, x, 'Order', 6);
fplot([f p1 p2 p3])
legend('Second Order Derivative',...
       'Fourth Order Derivative',...
       'Sixth Order Derivative',...
       'cos(x)', 'Location', 'Best')
title('Task 2: Taylor Series Expansion')