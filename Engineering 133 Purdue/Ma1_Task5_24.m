%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 13300 Fall 2021 
% 
% Problem Description: This program will calculate and plot the taylor 
% series approximation
%
% Assignment Information
%   Assignment:     e.g. Team HW9 - MA1
%   Author:         Gia Bao Tran, tran243@purdue.edu
%   Team ID:        LC1-24
%  	
%   Contributor:    Alexi Argyros, aargyros@purdue.edu
%                   Tyler Serrato, tjserrat@purdue.edu
%                   Justin Shu, jgshu@purdue.edu
%   My contributor(s) helped me:	
%     [x] understand the assignment expectations without
%         telling me how they will approach it.
%     [x] understand different ways to think about a solution
%         without helping me plan my solution.
%     [x] think through the meaning of a specific error or
%         bug present in my code without looking at my code.
%   Note that if you helped somebody else with their code, you
%   have to list that person as a contributor here as well.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
 x = -50:0.1:50; %initialise a matrix x from -50 to 50 in increments of 0.1
%% ____________________
%% CALCULATIONS
y = x - (x.^3)/(factorial(3))+(x.^5)/(factorial(5))-(x.^7)/(factorial(7));
% applying the formula 
%% ____________________
%% OUTPUTS
plot(x,y,'green-s') %plot with green squares

xlabel('Angle in radians') %labeling axis
ylabel('Approximate value of sine')
title('The Taylor Series Approximation')%chart title


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.