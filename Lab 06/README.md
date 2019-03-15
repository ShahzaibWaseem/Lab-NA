# Lab 06: Newton Raphson method for system of non linear equation & Curve Fitting

## Tasks
### Task 1
Implement Newton Raphson method for system of non-linear equation. Take function, initial guess, tolerance and other required parameter as input from user. Find its roots. Equations are:

f<sub>1</sub>(x<sub>1</sub>, x<sub>2</sub>) = 4x<sub>1</sub><sup>2</sup> - 20x<sub>1</sub> + x<sub>2</sub><sup>2</sup>/4 + 8 = 0

f<sub>2</sub>(x<sub>1</sub>, x<sub>2</sub>) = x<sub>1</sub> * x<sub>2</sub><sup>2</sup>/2 + 2x<sub>1</sub> - 5x<sub>2</sub> + 8 = 0

### Task 2
Calculate and plot a best fit line for this data set.
t=[0:8]; y=[40.12 66.78 80.17 86.71 80.77 66.78 44.41 10.51 -32.60];

Find:
1. What is the slope and intercept? (**polyfit**)
2. What is the value of y when t=4.5 and t=8.5 (**polyval**)