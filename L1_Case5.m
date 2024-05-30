a1 = 2;
a2 = 5;
f1 = 300;
f = 60;
Ns = 64;
w = 2 * pi * f;
w1 = 2 * pi * f1;
k = 1:(8 * Ns); % Adjust the range of k to include 8*Ns points.
t = k * (0.0167 / Ns);
a = sin(w * t);
b = a1 * exp(-t / a2) .* sin(w1 * t); % Element-wise multiplication using ".*"
FL = a + b;
plot(t,FL, 'Linewidth',2); % Plot FL against time t.
xlabel('Time (s)');
ylabel('FL(t)');
title('Plot of FL(t)');
grid on;
