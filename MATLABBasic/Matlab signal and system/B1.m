clc
clear all 
close all 
t=-20:0.001:20;
x=heaviside(t);
plot(t,x,'Linewidth',3);
axis([-20 20 -2 2]);
