function [] = poolcheck(userinp1, userinp2)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133
%
% Function Call
%poolcheck(userinp1,userinp2)
%
% Input Arguments
%Maximum number of swimmers & whether people are allowed to dive
%
% Output Arguments
% No output argument
%
% Assignment Information
%   Assignment:     Ma4 - Task 2
%   Author:         Gia Bao Tran, tran243@purdue.edu
%   Team ID:        LC1-24
%  	Contributor:    Alexi Argyros, aargyros@purdue.edu
%                   Tyler Serrato, tjserrat@purdue.edu
%                   Justin Shu, jgshu@purdue.edu
%   My contributor(s) helped me:	
%     [ x ] understand the assignment expectations without
%         telling me how they will approach it.
%     [ x ] understand different ways to think about a solution
%         without helping me plan my solution.
%     [ x ] think through the meaning of a specific error or
%         bug present in my code without looking at my code.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%did you complete the assignment information? delete this line if yes
%
%% ____________________
%% INITIALIZATION
userinp1 = (input("Insert number of swimmers: "));

if userinp1 < 0 || userinp1 > 588 || ~mod(userinp1,1) == 0 
    disp("Invalid input")
end

userinp2 = (input("Diving indicator (1 = allowed, 0 = not allowed): "));

if userinp2 ~= 1 && userinp2 ~= 0
  disp ('Invalid Input')
end

%% ____________________
%% CALCULATIONS



%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS



%% ____________________
%% COMMAND WINDOW OUTPUT



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.