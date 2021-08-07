
time=3; % length of time
Ts=1/10000; % time interval between samples
x=randn(1,time/Ts) ; % generate noise signal
figure(1),plotspec(x,Ts) % draw spectrum o f input
freqs =[0 0.2 0.21 1];
amps=[1 1 0 0 ] ;
b=firpm ( 100 , freqs , amps ) ; % s p e c i f y the LP f i l t e r
ylp=filter (b,1 ,x); % do the f i l t e r i n g
figure ( 2 ) , plotspec ( ylp , Ts ) % plot the output spectrum
freqs =[0 0.24 0.26 0.5 0.51 1];
amps=[0 0 1 1 0 0 ] ;
b=firpm ( 100 , freqs , amps ) ; % BP f i l t e r
ybp=filter (b,1 ,x); % do the f i l t e r i n g
figure ( 3 ) , plotspec ( ybp , Ts ) % plot the output spectrum
freqs =[0 0.74 0.76 1];
amps=[0 0 1 1 ] ;
b=firpm ( 100 , freqs , amps ) ; % s p e c i f y the HP f i l t e r
yhp=filter (b,1 ,x); % do the f i l t e r i n g
figure ( 4 ) , plotspec ( yhp , Ts ) % plot the output spectrum