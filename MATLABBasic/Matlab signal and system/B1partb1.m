clear all 
close all 
clc

a=200;
t=0:1/a:1;
u=@(t) t>0;
x= u(t)-u(t-1);

X=fftshift(fft(x));
X_magnitude= abs(X);
df = -a/2:1:a/2;
figure;
plot(df,X_magnitude);