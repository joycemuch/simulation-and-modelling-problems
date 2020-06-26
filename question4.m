x=(-30:1.5:30);

y=sin(x)./x;

plot(x,y), axis([-30 30 -3 4.5]);
 ylabel('sin(x)./x');
 xlabel('-30<x<30');
 legend('sin(x)./x');