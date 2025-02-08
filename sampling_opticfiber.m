%ȡ����դ
function sampling_opticfiber(delta_n,T,L_all,Period)
disp ('���������ʱ仯Ϊ��');disp(delta_n); 
disp ('ȡ����դռ�ձȣ�'); disp(T);
disp ('ȡ����դ�ܳ��ȣ�');disp(L_all);
disp ('ȡ����դ���ڣ�'); disp(Period);

lambda=1e-9*linspace(1500,1600,8000);
n_eff=1.4504;
L_grating=Period*T;
M=L_all/Period;
disp('ȡ��������'); disp (M);
lambda_Brag=1550e-9;
L_normal=Period*(1-T);
R=zeros(1,8000);
for j=1:8000
    F1=Optic_Fiber(lambda,lambda_Brag,delta_n,n_eff,j,L_grating);
    phai=Normal_OpticFiber(L_normal,n_eff,j,lambda);
    F1=(F1*phai*F1)^M;
    R(j)=(abs(F1(2,1)/F1(1,1)))^2;
end
figure
plot(lambda*1e9,R);
grid on
axis([1500 1600 0 1]);
title('������');
xlabel('Wavelength/nm');
ylabel('Reflective');
axis on;
hold on
end
