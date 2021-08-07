clear all 
close all 
clc

u=@(t) t>0;
t=linspace(-5,5);
x=@(t) (1-exp(-2*t)).*u(t).*exp(-t);

figure(1);
plot(t,x(t),'Linewidth',3);
axis([-5 5 -5 5]);


a=200;
t=0:1/a:1;
u=@(t) t>0;
x=   (1-exp(-2*t)).*u(t).*exp(-t);

X=fftshift(fft(x));
X_magnitude= abs(X);
df = -a/2:1:a/2;
figure(2);
plot(df,X_magnitude);