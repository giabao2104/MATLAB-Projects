%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 13300 Fall 2021 
% 
% Problem Description: This program will calculate the tolerance of the
% tank and calculate how many times it needs to be filled before reaching
% its maximum tolerable level. 
%
% Assignment Information
%   Assignment:     e.g. Ind HW10 - MA2
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
tdiameter = 4.1;
total_tank_length = 20.5; %initialise all variables
height_increment = 0.25; 
safety_percent = 0.8;



%% ____________________
%% CALCULATIONS
radius = tdiameter/2; %calculate tank radius
cylindrical_section_length = total_tank_length - tdiameter; %cylindrical section length
height = tdiameter; 
fluid_volume_max = ((pi*height^2*(3*radius-height))/3) + cylindrical_section_length*(radius^2 *acos((radius-height)/radius)-(radius-height) * (2*radius*height-height^2)^(1/2));
%maximum tank fluid volume 
safe_capacity = safety_percent * fluid_volume_max; %safe capacity

highheight = radius + 0.5*height_increment;
lowheight = radius - 0.5*height_increment;
highheightvol = ((pi*highheight^2*(3*radius-highheight))/3) + cylindrical_section_length*(radius^2 *acos((radius-highheight)/radius)-(radius-highheight) * (2*radius*highheight-highheight^2)^(1/2));
lowheightvol = ((pi*lowheight^2*(3*radius-lowheight))/3) + cylindrical_section_length*(radius^2 *acos((radius-lowheight)/radius)-(radius-lowheight) * (2*radius*lowheight-lowheight^2)^(1/2));
vtol = highheightvol - lowheightvol;
%calculating tolerance level

h = 0; 
i = 0;
%initialise height to 0 and initial fluid volume = 0 and i to 0
fluid_volume = 0 ;
while fluid_volume < (safe_capacity-vtol) 
    i = i + 1;
    h = h + height_increment;
    fluid_volume = ((pi*h^2*(3*radius-h))/3) + cylindrical_section_length*(radius^2 *acos((radius-h)/radius)-(radius-h) * (2*radius*h-h^2)^(1/2));
end

%% ____________________

%% OUTPUTS
fprintf("Number of interations: %i\n",i)
fprintf("Safe fill volume: %.3f\n",safe_capacity) %final print statements
fprintf("Final fluid volume: %.3f\n",fluid_volume)

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.
