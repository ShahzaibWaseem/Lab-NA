# Lab 13: Numerical Solutions for first Order ODEs

## Tasks
### Task 1
Solve from t=0 to t=3 with h=0.1 using Euler’s Method. ( y (0) = 1 )

dy/dt = t sin<sup>3</sup>(t);

### Task 2
If water is drained from a vertical cylindrical tank by opening a valve at the base, the water will flow fast when the tank is full and slow down as it continuous to drain. As it turns out, the rate at which the water level drops is:

dy/dx = -k sqrt(y)

Where k is a constant depending on the shape of the hole and the cross-sectional area of the tank and drain hole. The depth of the water y is measured in meters and the time t in minutes. If k=0.06, determine how long it takes the tank to drain if the fluid level is initially 3 m. Solve by applying Euler’s method with step size 0.5 minutes.