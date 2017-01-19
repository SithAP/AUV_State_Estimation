function rot=RotMat(angle,axis)
%RotMat Return Rotation Matrix of a given 'angle' about a given 'axis'
% 'angle' is positive anti-clockwise and 'axis' is 1-2-3 for X-Y-Z
% The function returns an error if any value of 'axis' is passed
if axis==1
    rot=[1,0,0;0,cos(angle),-sin(angle);0,sin(angle),cos(angle)];
elseif axis==2
    rot=[cos(angle),0,sin(angle);0,1,0;-sin(angle),0,cos(angle)];
elseif axis==3
    rot=[cos(angle),-sin(angle),0;sin(angle),cos(angle),0;0,0,1];
else
    error('Error generated by RotMat:\naxis:- Value=%f\nExpected Value=1-3',axis);
end
end