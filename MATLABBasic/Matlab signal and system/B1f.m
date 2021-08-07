clear all 
Ts=1/1000;
t=linspace(-2,2);
x= cos(2*pi*t).*sin(2*pi*t);

figure(1),plot(t,x ,'Linewidth',3);
figure(2),plotspec(x,Ts);

