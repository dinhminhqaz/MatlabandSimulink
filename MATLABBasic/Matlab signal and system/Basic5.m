time=1;
Ts=1/1000;
f=100;
t=-1:0.01:2;
x=cos(2*pi*f*t);
y=(x).^3;
figure(1), plotspec(y,Ts);