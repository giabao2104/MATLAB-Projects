%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 13300 Fall 2021 
% 
% Problem Description: This program will calculate the altitude, velocity
% and acceleration of a model rocket. We will track its velocity throughout
% and output the peak velocity and its corresponding time. 
%
%
%
% Assignment Information
%   Assignment:     e.g. Ind HW11 - MA3
%   Author:         Gia Bao Tran, tran243@purdue.edu
%   Team ID:        LC1-24
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
fileread = csvread("Data_RDAS (1).csv",2,0);
% Import data and separate into columns
time = fileread(:,1);
altitude = fileread(:,2); % set columns of values to a variable
acceleration = fileread(:,3);
accelft = acceleration * 32.2;
%% ____________________
%% CALCULATIONS
v = 0;
t = numel(time);
k = 2;
vector = zeros(1,t); %initialise a vector

% Initialize loop variables
for i = (k:t)
    v = (((accelft(i)+accelft(i-1))/2)*(time(i)-time(i-1)));
    vector(i) = v; %add to the vector
end

maxvel = max(vector); % Find the maximum velocity
pos1 = find(vector == maxvel);% find position of the maximum value
pos = fileread(pos1,1); %find the value of time in that position


%% ____________________
%% FIGURE DISPLAY
figure(2)
subplot(3,1,1)
plot(time,accelft)
xlabel("Time (s)")
ylabel("Acceleration (ft/s^2")
title("Acceleration by Time")
grid on 

subplot(3,1,2)
plot(time,vector)
xlabel("Time (s)")
ylabel("Velocity (ft/s)")
title("Velocity by Time")
grid on 

subplot(3,1,3)
plot(time,altitude)
xlabel("Time (s)")
ylabel("Altitude (ft)") %final plotting
title("Altitude by Time")
grid on 

%% ____________________
%% TEXT DISPLAY
fprintf("Max velocity = %f(ft/s) at time %f(s).\n",maxvel,pos)

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.