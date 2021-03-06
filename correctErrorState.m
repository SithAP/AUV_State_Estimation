function [ delx_corr,cov_corr ] = correctErrorState(del_y,H,R,delx_pred,cov_pred )
%correctErrorState Correction Step of IKF
%   Applies Kalman Filter based update on previous predicted state and
%   measured state from a sensor.
K=cov_pred*H'/(H*cov_pred*H'+R);
delx_corr=delx_pred+K*(del_y-H*delx_pred);
cov_corr=(eye(length(cov_pred)-K*H)*cov_pred);
end

