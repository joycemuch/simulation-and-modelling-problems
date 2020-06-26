x = (-2*pi : 2*pi);
 y = sinh(x);
  z = (exp(x) - exp(-x))./2;
  
  plot(x,y,x,z,'*');
  title("vector for x over the range -2pi< x < 2pi ");
  xlabel("-2pi< x < 2pi");
  ylabel("sinh(x)/(exp(x) - exp(-x))./2");
  legend('sinh(x)' ,'(exp(x) - exp(-x))./2'); 
  