time=20;                                 % length of time
Ts=1/10000;                             % time interval between samples
x=randn(1,time/Ts);                     % generate noise signal
%figure(1),plotspec(x,Ts)                % draw spectrum of input

freqs=[0 0.998 0.999 1];
amps=[1 1 0 0];
b=firpm(100,freqs,amps);
ylp=filter(b,1,x);
%figure(2),plotspec(ylp,Ts);

freqs=[0 0.21 0.22 1];
amps=[0 0 1 1];
b=firpm(100,freqs,amps);
yhp=filter(b,1,x);
%figure(3),plotspec(yhp,Ts);


freqs=[0 0.21 0.22 0.998 0.999 1];
amps=[0 0 1 1 0 0 ];
b=firpm(100,freqs,amps);
ybp=filter(b,1,x);
figure(4),plotspec(ybp,Ts);


freqs=[0 0.21 0.22 0.998 0.999 1];
amps=[1 1 0 0 1 1 ];
b=firpm(100,freqs,amps);
ybp=filter(b,1,x);
figure(4),plotspec(ybp,Ts);