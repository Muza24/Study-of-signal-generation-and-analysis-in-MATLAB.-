a1 = 0.2;
f1 = 10;
w1 = 2*pi*f1;
f =50;
w = 2*pi*f;
Ns = 64;
k = 1:8*Ns;
t = k*(0.020/Ns);
a = (1 + a1 * sin(w1*t));
b = sin(w*t); 
V = a.*b;
plot(t, V, 'Linewidth', 2);
grid on;
xlabel('Time in seconds');
ylabel('Voltage in Volts');
title('Flickering Waveform')
