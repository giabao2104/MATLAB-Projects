%function replace this text with your function definition line
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133
%
% Function Call

%
% Input Arguments

%
% Output Arguments

%
% Assignment Information
%   Assignment:     Ind HW Ma4 - Task 4
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
image = imread("block.png"); %read image

figure(1)
imshow(image)
title("Color Original Image")%title and plot original

figure(2)
imshow(blockgray)
title("Gray Original Image") %title and plot grayscale

%% ____________________
%% CALCULATIONS
blockgray = rgb2gray(image);


colorgr = menu("Choose color or gray image","Color Image","Gray Image");
move = menu("How would you like to rotate this image?","90 Degrees Clockwise","90 Degrees Counterclockwise","180 Degrees");

if colorgr == 1 %user choose color image (so we can change the input argument for function)
    if move == 1
        out = Ma4_Task4_90_clockwise_tran243(image);
    elseif move == 2 
        out = Ma4_task4_90_counterclockwise_tran243(image); %different function for different choices
    elseif move == 3
        out = Ma4_Task4_180_tran243(image);
    end

elseif colorgr == 2 %user choose gray image
    if move == 1
        out = Ma4_Task4_90_clockwise_tran243(blockgray);
    elseif move == 2 
        out = Ma4_task4_90_counterclockwise_tran243(blockgray);%call appropriate functions
    elseif move == 3
        out = Ma4_Task4_180_tran243(blockgray);
    end
end

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