clear all 
close all 
clc
t=1;
Ts=1;
x=  cos(2*pi*t).*sin(2*pi*t);
figure(1); plotspec(x,Ts);


