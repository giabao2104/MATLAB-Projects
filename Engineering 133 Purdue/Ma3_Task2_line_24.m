function [distance] = Ma3_Task2_line_24(x1,x2,y1,y2)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133
%
% Function Call
% [centimeter_value] = Ma3_Task2_INtoCM_24(inches)
%
% Input Arguments
% Input Arguments = (inches)
%
% Output Arguments
% Output Arguments = centimeter_value
%
% Assignment Information
%   Assignment:     Team HW11 - MA3
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

%
%% ____________________
%% INITIALIZATION
%x1 = input('Enter a value for x1: ');
%x2 = input('Enter a value for x2: ');
%y1 = input('Enter a value for y1: ');
%y2 = input('Enter a value for y2: ');

x1 = 1;
x2 = 2;
y1 = 1;
y2 = 2;
%% ____________________
%% CALCULATIONS
distance = ((x2-x1)^2 + (y2-y1)^2)^(1/2);

distancecm = Ma3_Task2_INtoCM_24(distance) %call the function 

%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS



%% ____________________
%% COMMAND WINDOW OUTPUT
%Test case 1: When each side length is 1 - the line in inches is 1.41in and
%centimeter is 3.59cm. Alternative test method is calculating by hand. 

%Test case 2: When one side length is 5 and the other 6 - 
%the line in inches is 7.81in and centimeter is 19.84cm. Alternative test
%method is calculating by hand. 


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.
