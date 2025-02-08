%取样光栅
% clc,clear,close all
delta_n=8*1e-5; %调制折射率变化为
T=0.62;      %取样光栅占空比 
L_all=1*1e-3; %取样光栅总长度
Period=1000*1e-6;  %光栅周期
sampling_opticfiber(delta_n,T,L_all,Period); 
