% Task 1
Pressure = [336 294.4 266.4 260.8 260.5 249.6 193.6 165.6];
Volume = [0.5 2 3 4 6 8 10 11];

integral = trapezoidal(Volume, Pressure);
fprintf('The Integral (using the Trapezoidal Method) is: %.3f\n', integral);
integral = Simpson_oneThird(Volume, Pressure);
fprintf('The Integral (using the Simpson 1/3 Method) is: %.3f\n', integral);
integral = Simpson_threeByEight(Volume, Pressure);
fprintf('The Integral (using the Simpson 3/8 Method) is: %.3f\n', integral);
