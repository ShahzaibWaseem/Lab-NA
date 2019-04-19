function distance = trapezoidal_Task2()
    g = 9.8;
    m = 68.1;
    c = 0.25;
    t = 0:0.01:10;
    
    velocity = sqrt((g*m)/c)*tanh(sqrt((g*c)/m).*t);
    distance = trapezoidal(t, velocity);
end