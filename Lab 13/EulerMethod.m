function y_next = EulerMethod(y_prev, h, t)
    for i = 2: length(t),
       y_next = y_prev + h * (t(i) * (sin(t(i))^3));
       y_prev = y_next;
    end
end