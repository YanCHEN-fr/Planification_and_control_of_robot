function [ u ] = UnicycleToPoseControl( xTrue,xGoal )
%Computes a control to reach a pose for unicycle
%   xTrue is the robot current pose : [ x y theta ]'
%   xGoal is the goal point
%   u is the control : [v omega]'

% TODO

Krho=150;
Kalpha=10;
Kbeta=20;
error=xGoal-xTrue;
goalDist=norm(error(1:2));
AngleToGoal = AngleWrap(atan2(error(2),error(1))-xTrue(3));
u(1) = Krho*goalDist;
if abs(AngleToGoal)>1.2
        u(1)=0;
end
u(2) = Kalpha*AngleToGoal;
if goalDist<0.05
    u(2) = Kbeta*error(3);
end

end

