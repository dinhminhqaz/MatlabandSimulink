 % RC low pass filter 
clear 
syms y w 
w = -120:0.1:120;
R =500;
C=1211e-6;
y=((R*C*w).^2+1).^-0.5;
plot (w,y)
wc=(R*C).^-1;
phase = -(atan(w*R*C))*180/pi;
plot(w*R*C,phase)
help bode
help squrt


%% Because a filter that passes signals with a frequency lower than a selected cutoff frequency and attenuates signals with frequencies higher than the cutoff frequency
