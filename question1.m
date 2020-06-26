
% first wave
f=0.5;
lambda = 5;
beta = 2*pi/lambda;
omega = 2*pi*f;
 x = 0:100;
  for i = x
      t = 0.1 *i;
      y = lambda*sin(beta*x - omega*t);
     
   
  end 
  subplot(2,1,1);
  plot(x,y);
  title("Standing Waves");
  xlabel("time");
  ylabel("Amplitude")
  grid on;
  

xmax = 100;                
wL = 20;                   
Nx = 500;                   
x = linspace(0,xmax,Nx);   

T = 100;                   
Nt = 20;                   
dt = T/Nt;                 
t = 0;                     
y = zeros(1,Nx);            

f = 0.9;
lambda = 6; 
beta = 2*pi/lambda;
omega = 2*pi*f;
 x = 0:100;

for i = x
      t = 0.9 *i;
      y1 = lambda*cos(beta*x - omega*t/2);
end

f = getframe(gcf);
[im,map] = rgb2ind(f.cdata,256,'nodither'); 
im(1,1,1,Nt) = 0;


for c = 1 : Nt+1
   y = sin(2*pi*t/T - 2*pi*x/wL);
   subplot(2,1,2);
   plot(x,y,'LineWidth',3);
   set(gca,'FontSize',12);
   set(gca,'Ytick',[-1 -0.5 0 0.5 1]);
   title("Travelling waves");
   xlabel('time','FontSize',12);
   ylabel('Amplitude','FontSize',12);
   pause(0.01);
   
   f = getframe(gcf);
   im(:,:,1,c) = rgb2ind(f.cdata,map,'nodither');
   
   t = t + dt;             
end
