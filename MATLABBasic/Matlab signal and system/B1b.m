clear all 
u=@(t) t>0;
t = linspace(-5,5);
x=@(t) u(t)-u(t-1);

figure 
plot(t,x(t),'Linewidth',3);
axis([-5 5 -5 5]);
grid
