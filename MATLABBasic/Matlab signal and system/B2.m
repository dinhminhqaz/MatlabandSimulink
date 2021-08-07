clear all 
close all 
clc 


Ts=0.1;
Fs=1/0.1;
t=0:Ts:1;
a=0;  %cos(pi*t);
%a=0,pi/4,pi/2,pi
f=1;
%f=1,2,6,12
y= cos(2*pi*f.*t+a);

Y=fftshift(fft(y));

Y_mag=abs(Y);
df= -Fs/2:1:Fs/2;
figure 
plot(df, Y_mag,'Linewidth',3);
