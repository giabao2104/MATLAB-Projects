%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 13300 Fall 2021 
% 
% Problem Description: This program will plot the power and corresponding
% power of two different speakers
%
%
%
% Assignment Information
%   Assignment:     e.g. Ind HW13 - MA5
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
filein = csvread('Data_speaker_volume_power.csv',3,0); % read the CSV file


%% ____________________
%% CALCULATIONS
power = filein(:,1); % read the appropriate rows / columns for each of the three variables
SPK3 = filein(:,2);
SPK4 = filein(:,3);


%% ____________________
%% OUTPUTS
subplot(2,2,1) %indicate subplot type and location
plot(power,SPK3) %first plot
hold on %keep the first plot on the graph
plot(power,SPK4) %second plot
xlabel("Power (mW)") %axis label
set(gca,'FontSize',8) %set font size to 8
ylabel("Speaker Decibals (dB)") %axis label
legend("SPK3","SPK4","Location","best") %turn on legend and placed in best location
grid on %turn on grid
title("Power to Speaker Decibals (Linear-Linear)") %title

subplot(2,2,2) %indicate subplot type and location
semilogx(power,SPK3)%first plot w/ log on x axis
hold on %keep the first plot on the graph
semilogx(power,SPK4) %second plot w/ log on x axis
xlabel("Log (Power (mW))") %axis label
set(gca,'FontSize',8) %set font size to 8
ylabel("Speaker Decibals (dB)") %axis label
legend("SPK3","SPK4","Location","best") %turn on legend and placed in best location
grid on %turn on grid
title("Power to Speaker Decibals (Logx-Linear)") %title

subplot(2,2,3) %indicate subplot type and location
semilogy(power,SPK3)%first plot w/ log on y axis
hold on %keep the first plot on the graph
semilogy(power,SPK4) %second plot w/ log on y axis
xlabel("Power (mW)") %axis label
set(gca,'FontSize',8) %set font size to 8
ylabel("Log (Speaker Decibals (dB))") %axis label
legend("SPK3","SPK4","Location","best") %turn on legend and placed in best location
grid on %turn on grid
title("Power to Speaker Decibals (Linear-Logy)") %title

subplot(2,2,4) %indicate subplot type and location
loglog(power,SPK3)%first plot w/ log on both axis
hold on %keep the first plot on the graph
loglog(power,SPK4) %second plot w/ log on both axis
xlabel("Log (Power (mW))") %axis label
set(gca,'FontSize',8) %set font size to 8
ylabel("Log (Speaker Decibals (dB))") %axis label
legend("SPK3","SPK4","Location","best") %turn on legend and placed in best location
grid on %turn on grid
title("Power to Speaker Decibals (Log-Log)") %title

%% ANALYSIS
%The type of function that best fits the relationship between the data is
%logx to the linear y value. This is because this yields the most linear
%relationship. All other graphs have shapes similar to the y = sqrt(x)
%function.
%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.