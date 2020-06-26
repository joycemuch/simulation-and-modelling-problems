x =(-20: 20);

y = 2 ./(sqrt(3+square(x)));

y1 = -1 ./(sqrt(2+square(x)));

plot(x,y,x,y1);
xlabel('-20<x<20');
ylabel('2 ./(sqrt(3+square(x)))');
legend('2 ./(sqrt(3+square(x)))' ,' -1 ./(sqrt(2+square(x)))');
