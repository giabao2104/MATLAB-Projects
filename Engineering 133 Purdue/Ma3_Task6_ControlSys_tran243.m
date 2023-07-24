%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 13300 Fall 2021 
% 
% Problem Description: This program will manipulate data collected of lane 
% width and lane marker to deduce the relationship between between lane
% width and speed of vehicles. 
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
minlanemarker = fileread(fileread(:,2) == minlanewidth,1);
%calculating maximum and minimum lane width and their respective lane
%marker

%% ____________________
%% CALCULATIONS
for i = find(fileread(:,2) < 10)
    j = fileread(i,1);
    P = min(j);
    Q = max(j);
    difference = Q-P;
end

low = 145 <= fileread(4:end,1) & fileread(4:end,1) <= P;
    avg145toP = (mean(fileread(low,3:8))); 

mid = P <= fileread(4:end,1) & fileread(4:end,1) <= Q; 
    avgPtoQ = (mean(fileread(mid,3:8))); %calculating the average speed for
    %each range

high = Q <= fileread(4:end,1) & fileread(4:end,1) <= 146;
    avgQto146 = (mean(fileread(high,3:8)));


for w = P < fileread(4:end,1) & fileread(4:end,1) < Q
    z = fileread(w,1);
end
percentage = (numel(z)/numel(fileread(:,1)))*100; %calculating percentage that is larger than 10. 


%% ____________________

%% OUTPUTS
figure(1)
x = fileread(:,1);
y = fileread(:,2);
plot (x,y, 'r')
grid on 
xlabel("Mile Markers")
ylabel("Lane Width")
title("Lane Width vs Mile Marker") %plotting the graph

fprintf("The maximum lane width is %.2f at mile marker %.2f\n",maxlanewidth,maxlanemarker)
fprintf("The minimum lane width is %.2f at mile marker %.2f\n",minlanewidth,minlanemarker)
fprintf("The mile marker for P is %.2f and Q is %.2f\n\n",P,Q)

fprintf("The average number of hours in speed range >65mph from 145 to P is: %.2f\n",avg145toP(1))
fprintf("The average number of hours in speed range 55-64mph from 145 to P is: %.2f\n",avg145toP(2))
fprintf("The average number of hours in speed range 45-54mph from 145 to P is: %.2f\n",avg145toP(3))
fprintf("The average number of hours in speed range 35-44mph from 145 to P is: %.2f\n",avg145toP(4))
fprintf("The average number of hours in speed range 25-34mph from 145 to P is: %.2f\n",avg145toP(5))
fprintf("The average number of hours in speed range 15-24mph from 145 to P is: %.2f\n\n",avg145toP(6))

fprintf("The average number of hours in speed range >65mph from P to Q is: %.2f\n",avgPtoQ(1))
fprintf("The average number of hours in speed range 55-64mph from P to Q is: %.2f\n",avgPtoQ(2))
fprintf("The average number of hours in speed range 45-54mph from P to Q is: %.2f\n",avgPtoQ(3))
fprintf("The average number of hours in speed range 35-44mph from P to Q is: %.2f\n",avgPtoQ(4))
fprintf("The average number of hours in speed range 25-34mph from P to Q is: %.2f\n",avgPtoQ(5))
fprintf("The average number of hours in speed range 15-24mph from P to Q is: %.2f\n\n",avgPtoQ(6))

fprintf("The average number of hours in speed range >65mph from Q to 146 is: %.2f\n",avgQto146(1))
fprintf("The average number of hours in speed range 55-64mph from Q to 146 is: %.2f\n",avgQto146(2))
fprintf("The average number of hours in speed range 45-54mph from Q to 146 is: %.2f\n",avgQto146(3))
fprintf("The average number of hours in speed range 35-44mph from Q to 146 is: %.2f\n",avgQto146(4))
fprintf("The average number of hours in speed range 25-34mph from Q to 146 is: %.2f\n",avgQto146(5))
fprintf("The average number of hours in speed range 15-24mph from Q to 146 is: %.2f\n\n",avgQto146(6))
%final print statements. 
fprintf("The percentage of data points between P and Q where the lane width is great than 10: %.2f%%\n",percentage)

%Question D: If the lane width goes above 10ft, it should be good because
%larger lanes increase vehicle speed which decrease congestion therefore I
%don't think its a problem. 

%Question F: Now that I know there is about 1/5 of parts between P and Q
%that is wider than 10ft I still believe that larger lanes can help vehicle
%increase speed. However, the change from larger lanes to smaller lanes
%(especially that the beginning before P) can be dangerous if cars does not
%anticipate to slow down. 

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.