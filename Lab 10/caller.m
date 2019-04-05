% Task 1
t = [0 25 50 75 100 125];
x = [0 32 58 78 92 100];

derivative = twoPointForwardDifference(t, x, 25);
fprintf('\nTwo Point Forward Difference\nFor t = 25\t\troot = %.2f\n', derivative);
derivative = threePointCentralDifference(t, x, 50);
fprintf('\nThree Point Central Difference\nFor t = 50\t\troot = %.2f\n', derivative);
derivative = threePointBackwardDifference(t, x, 125);
fprintf('\nThree Point Backward Difference\nFor t = 125\t\troot = %.2f\n', derivative);