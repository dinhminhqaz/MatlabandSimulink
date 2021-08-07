time=0.1;
Ts=1/1000;
f=400;%450.500.550.600
t=Ts:Ts:time;
x=cos(2*pi*f*t);
figure(1), plotspec(x,Ts);