function [photo] = Ma4_Task4_90_clockwise_tran243(image)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133
%
% Function Call
% Ma4_Task4_90_clockwise_tran243()
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
photo = zeros(size(image),'uint8'); %create a zero array
%% ____________________
%% CALCULATIONS

if ndims(image) == 3 %RGB photo
    [rows,columns,depth] = (size(image)); 
    photo = zeros(columns,rows,depth,'uint8'); %change type to uint (swap columns and rows)
    for r = 1:rows
        for c = 1:columns
            for d = 1:depth 
            photo(c,rows-r+1,d) = image(r,c,d);%third dimension work through 3 dimensions
            end
        end
    end

elseif ndims(image) == 2 %grayscale photo
   [rows,columns] = (size(image));
    photo = zeros(columns,rows,'uint8');
   for r = 1:rows
        for c = 1:columns
            photo(c,rows-r+1) = image(r,c); %work through the columns and rows
        end
    end
end

figure,imshow(photo)
title("Image Rotated 90 Degrees") %title and plot


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