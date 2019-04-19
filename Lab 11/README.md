# Lab 11: Numerical Integration

## Tasks

### Task  1

The work produced by a constant temperature, pressure-volume thermodynamic process can be computed as

W = Integral (pdV)

Where W is work, p is pressure and V is volume. Using a combination of the trapezoidal rule, Simpson’s 1/3 rule and Simpson’s 3/8 rule, use the following data to compute the work in kNm:

|Pressure(KPa)|Volume(m<sup>3</sup>)|
|--|--|
|336|0.5|
|294.4|2|
|266.4|3|
|260.8|4|
|260.5|6|
|249.6|8|
|193.6|10|
|165.6|11|

#### Trapezoidal Method

= (h/2)[f(x<sub>0</sub>)+2f(x<sub>1</sub>)+2f(x<sub>2</sub>)+ ... +2f(x<sub>n-1</sub>)+f(x<sub>n</sub>)]

#### Simpson's 1/3 Method

= (h/3)f(x<sub>0</sub>)+4{f(x<sub>1</sub>)+f(x<sub>3</sub>)+ ... +f(x<sub>n-1</sub>)}+2{f(x<sub>2</sub>)+f(x<sub>4</sub>) + ... + f(x<sub>n-2</sub>)}+f(x<sub>n</sub>)]

#### Simpson's 3/8 Method

= (3h/8)[f(x<sub>0</sub>)+3{f(x<sub>1</sub>)+f(x<sub>2</sub>)+f(x<sub>4</sub>)+f(x<sub>5</sub>)+ ... +f(x<sub>n-2</sub>)+f(x<sub>n-1</sub>)}+2{f(x<sub>3</sub>)+f(x<sub>6</sub>)+f(x<sub>9</sub>)+ ... +f(x<sub>n-3</sub>)}+f(x<sub>n</sub>)]

### Task 2

Suppose that the upward force of air resistance on a falling object is proportional to the square of the velocity. For this case velocity can be computed as

v(t) = sqrt((g*m)/c)*tanh(sqrt((g*c)/m).*t)

Where c<sub>d</sub> a second-order drag coefficient. If g = 9.8 m/s<sup>2</sup>, m = 68.1 kg and c<sub>d</sub> = 0.25 kg/m, use trapezoidal rule to determine how far the object falls in 10 seconds. Use a sufficiently high n that you get eight significant digits of accuracy.