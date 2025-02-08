%-----------------------取样光栅均匀段------------------------
function [F1]=Optic_Fiber(lambda,lambda_Brag,delta_n,n_eff,j,L_grating)
delta=1/2*2*pi*n_eff*(1./lambda-1/lambda_Brag);
k=pi./lambda*delta_n;
sigma1=2*pi./lambda*delta_n; 
sigma2=delta+sigma1;
s=sqrt(k.^2-delta.^2);
f11(j)=(cosh(s(j)*L_grating)-1i*sigma2(j)/s(j)*sinh(s(j)*L_grating));
f12(j)=-(1i*k(j)/s(j)*sinh(s(j)*L_grating));
f21(j)=(1i*k(j)/s(j)*sinh(s(j)*L_grating));
f22(j)=(cosh(s(j)*L_grating)+1i*sigma2(j)/s(j)*sinh(s(j)*L_grating));
F1=[f11(j) f12(j);f21(j) f22(j)];
end