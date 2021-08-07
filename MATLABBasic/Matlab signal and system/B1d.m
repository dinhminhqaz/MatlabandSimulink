clear all 
u=@(t) t>0;
t=linspace(-5,5);
x=@(t) cos(2*pi*t).*u(t);

figure 
plot(t,x(t),'Linewidth',3);
axis([-5 5 -5 5]);