%Downsampling
N= input('enter the length of sinusoidal sequence');
M=input('enter downsampling fator');
time=1;
Ts=1/1000;
n=0:0.05:N-1;
f=100;
t=Ts:Ts:time;
x=cos(2*pi*f*M*t);
a=cos(2*pi*f*n);
y=x([1:M:length(a)]);

figure(1),plotspec(x,Ts);
subplot(2,2,2);
stem(y);

