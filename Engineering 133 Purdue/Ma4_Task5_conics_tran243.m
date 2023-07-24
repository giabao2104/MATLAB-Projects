%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 13300 Fall 2021 
% 
% Problem Description: This program will plot a circle, an ellipes, a
% hyperbola and a parabola.
%
%
%
% Assignment Information
%   Assignment:     e.g. Ind HW12 - MA4
%   Author:         Gia Bao Tran, tran243@purdue.edu
%   Team ID:        LC1-24 (e.g. LC1 - 01; for section LC1, team 01)
%  	
%   Contributor:    Name, login@purdue [repeat for each]
%   My contributor(s) helped me:	
%     [ ] understand the assignment expectations without
%         telling me how they will approach it.
%     [ ] understand different ways to think about a solution
%         without helping me plan my solution.
%     [ ] think through the meaning of a specific error or
%         bug present in my code without looking at my code.
%   Note that if you helped somebody else with their code, you
%   have to list that person as a contributor here as well.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
r = 5; %radius of circle
h = 2; 
k = -3;
theta = linspace(0,2*pi,100); %set up theta
%% ____________________
%% CALCULATIONS

figure(2)


%circle 
x = r*cos(theta) + h; %circle formulas
y = r*sin(theta) + k;


%parabola
xp = -8:0.16:8; %parabola formula
yp = 0.1*xp.^2;


%ellipse
a = 15;
b = 6;
xe = a*cos(theta); %formula for ellipse
ye = b*sin(theta);


%hyperbola
aa = 2;
bb = 1; %set up
xh = -10:0.2:10;
xh2 = xh.^2;
yh = ((1+(xh2/aa^2))*bb^2).^(1/2); %solve for y
yh1 = -yh; %the flipped version


%% ____________________
%% OUTPUTS
sgtitle('Four Types of Conic Sections') %title 
%circle plotting
subplot(2,2,1) 
plot (x,y) %plot
subtitle('Circle')
xlabel("X values") %label
ylabel("Y values")
grid on

%parabola plotting
subplot(2,2,2)
plot(xp,yp) %plot
subtitle("Parabola") %labelling
xlabel("X values")
ylabel("Y values")
grid on

%ellipse plotting
subplot(2,2,3) 
plot(xe,ye)
subtitle("Ellipse")
xlabel("X values") %labels
ylabel("Y values")
grid on

%hyperbola plotting
subplot(2,2,4)
plot(xh,yh,xh,yh1) 
subtitle("Hyperbola")
xlabel("X values") %label
ylabel("Y values")
grid on


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.