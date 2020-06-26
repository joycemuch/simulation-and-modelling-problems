x =(-3:3);

y = 3*x.^4-6*x.^3+8*x.^2+4*x+90;

z = 3*x.^3+5*x.^2-8*x+70;


plot(x,y,x,z)
title("current (miliamperes vs volts)")
xlabel("voltage (V)")
ylabel("miliamperes (mA)")
legend('3*x.^4-6*x.^3+8*x.^2+4*x+90', '3*x.^3+5*x.^2-8*x+70')



