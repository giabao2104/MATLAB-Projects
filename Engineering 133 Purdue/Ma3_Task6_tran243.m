%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 13300 Fall 2021 
% 
% Problem Description: This program will look through the speed in
% different lane width and find the percentage of cars that exceed
% Assignment Information
%   Assignment:     e.g. Ind HW11 - MA3
%   Author:         Gia Bao Tran, tran243@purdue.edu
%   Team ID:        LC1-24
%  	
%   Contributor:   
%   My contributor(s) helped me:	
%     [] understand the assignment expectations without
%         telling me how they will approach it.
%     [] understand different ways to think about a solution
%         without helping me plan my solution.
%     [] think through the meaning of a specific error or
%         bug present in my code without looking at my code.
%   Note that if you helped somebody else with their code, you
%   have to list that person as a contributor here as well.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________

%% INITIALIZATION
fileread = csvread("LaneWidth_TrafficSpeed.csv", 4,0); % open file

maxlanewidth = max(fileread(:,2));
maxlanemarker = fileread(fileread(:,2) == maxlanewidth,1);
minlanewidth = min(fileread(:,2));
minlanewidth = fileread(fileread(:,2) == minlanewidth,1);

%% ____________________
%% CALCULATIONS
for i = find(fileread(:,2) < 10)
    j = fileread(i,1);
    P = min(j);
    Q = max(j);
    difference = Q-P;
end

low = 145 <= fileread(4:end,1) && fileread(4:end,1) <= P;
    avg145toP = sum(mean(fileread(low,3:7)))/5; 

mid = P <= fileread(4:end,1) && fileread(4:end,1) <= Q; 
    avgPtoQ = sum(mean(fileread(mid,3:7)))/5;

high = Q <= fileread(4:end,1) && fileread(4:end,1) <= 146;
    avgQto146 = sum(mean(fileread(mid,3:7)))/5;

for w = P < fileread(4:end,1) && fileread(4:end,1) < Q
    z = fileread(ll,1);
end

percentage = (numel(y)/numel(fileread(:,1)))*100;


%% ____________________

%% OUTPUTS
x = 
y = 
plot(x,y)

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.