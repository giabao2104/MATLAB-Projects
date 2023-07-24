function [imageout] = Ma_Task4_180_tran243(image)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133
%
% Function Call
% Ma_Task4_180_tran243(image)
%
% Input Arguments
% image
%
% Output Arguments
% imageout
%
% Assignment Information
%   Assignment:     (e.g. Ma4_Task 4)
%   Author:         Gia Bao Tran, tran243@purdue.edu
%   Team ID:        LC1-24
%  	Contributor:    Name, login@purdue [repeat for each]
%   My contributor(s) helped me:	
%     [ ] understand the assignment expectations without
%         telling me how they will approach it.
%     [ ] understand different ways to think about a solution
%         without helping me plan my solution.
%     [ ] think through the meaning of a specific error or
%         bug present in my code without looking at my code.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%

%
%% ____________________
%% INITIALIZATION



%% ____________________
%% CALCULATIONS

imageout = rot90(image,2); %using rot90 twice to turn it 180 degrees.

%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS
figure,imshow(imageout)
title("Image Rotated 180 Degrees") %title and plot


%% ____________________
%% COMMAND WINDOW OUTPUT


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.