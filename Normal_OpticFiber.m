%取样光栅正常段 
function [phai]=Normal_OpticFiber(L_normal,n_eff,j,lambda) 
beita(j)=2*pi*n_eff/lambda(j);
phai=[exp(-1i*beita(j)*L_normal),0;0,exp(1i*beita(j)*L_normal)];
end