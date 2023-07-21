groupnum = input('Type your group number');
L=100; %length
X = 8 + 2 * groupnum; %Value for the period
w = (2*pi)/X; %Value for the frequency
phi = 0; %phi is not mentioned, so it's assumed its value is 0
A = 3 + 2 * groupnum; %Value for the amplitude
%sinudoidal signal equation
n = 1:L; 
x = A*sin((2*pi/w)*n+phi);
plot(x)
title('Causal Sinusoidal')
xlabel('Ms')
ylabel('Volts')