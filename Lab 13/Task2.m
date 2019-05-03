function time = Task2(y_prev, h, k)
    for i = 1 : 1000,
       y_next = y_prev + h * (-k * sqrt(y_prev));
       y_prev = y_next;
       if (y_next <= 0),
           break;
       end
    end
    time = h * i;
end