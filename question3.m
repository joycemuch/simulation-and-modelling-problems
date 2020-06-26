f0=1;
T=2;
phi=-pi/3;
fs=100;
t=0:1/fs:T;

x_t=exp(2*pi*1i*f0*t+1i*phi)+2*cos(2*pi*f0*t);

figure(3);
subplot(2,1,1);
stem(t,real(x_t));
xlabel('time samples');
ylabel('real');
grid on;

%imaginary
subplot(2,1,2);
stem(t,imag(x_t));
xlabel('time samples');
ylabel('imaginary');
grid on;
legend;



figure(1);
%magnitude

stem(t,abs(x_t));

xlabel('time samples');
ylabel('magnitude');
grid on;

figure(2);
%phase
stem(t,angle(x_t));
xlabel('time samples');
ylabel('phase');
grid on;
