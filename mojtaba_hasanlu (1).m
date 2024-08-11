clear;
clc;
num=input('pls enter coefficient sentences of numator');
den=input('pls enter coefficient sentences of denumator');
transfer_function=tf(num,den)
[A,B,C,D]=tf2ss(num,den)
subplot(2,2,1);rlocus(num,den);
subplot(2,2,2);bode(num,den);
subplot(2,2,3);nichols(num,den);
subplot(2,2,4);nyquist(num,den);
[gm,pm,wc,wf]=margin(num,den)
[zeros,poles,k_system]=tf2zp(num,den)
