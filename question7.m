x = (-pi:pi/500:pi);
%sum 1 of the series
 s1 = -4/pi*sin(x); 
 
 
%sum 2 of the series
s2 = -4/pi*(sin(x)+(sin(3*x)/3));

%sum 3 of the series
s3 = -4/pi*(sin(x)+(sin(3*x)/3)+(sin(5*x)/5));

%sum 4 of the series
s4 = -4/pi*(sin(x)+(sin(3*x)/3)+(sin(5*x)/5)+(sin(7*x)/7));
 
 
 
plot(x,s1,x,s2,x,s3,x,s4);
axis([-pi pi -2 2]);
title("fourier series repersentation");
legend("-4/pi*sin(x)", "-4/pi*(sin(x)+(sin(3*x)/3));","-4/pi*(sin(x)+(sin(3*x)/3)+(sin(5*x)/5))", "-4/pi*(sin(x)+(sin(3*x)/3)+(sin(5*x)/5)+(sin(7*x)/7))")
xlabel("-pi<x<pi");
ylabel("f(X)");
