%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 13300 Fall 2021 
% 
% Problem Description: This program will sort the vectors into descending
% and ascending order.
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
v = [10 5 1 8 -9 0 2 3];
v1 = v;
v2 = v;
l = length(v);


%% ____________________
%% CALCULATIONS
descending_vector = zeros(1,l); % create a descending vector of 0s
for h = 1:1:l %for loop for each index up until 8 
    max_value = max(v1); %find the max value
    descending_vector(h) = max_value; %set that value to the current index
    index1 = find(v1 == max_value); %find the index of the max value
    min_value = min(v1);%find the minumum value of the vector
    v1(index1) = min_value -5; %set the number of that index to be smaller 
    %than minimum of whole vector
end

ascending_vector = zeros(1,l);% create a descending vector of 0s
for k = 1:1:l %for loop for each index up until 8 
    min_value1 = min(v2);%find the min value
    ascending_vector(k) = min_value1;%set that value to the current index
    index1 = find(v2 == min_value1);%find the index of the minimum value
    max_value1 = max(v2);%find the maximum value of the vector
    v2(index1) = max_value1 +5;%set the number of that index to be bigger 
    %than maximum of whole vector
end
%% ____________________

%% OUTPUTS
fprintf("The vector v is: [")
fprintf("%i ", v(1:end-1))
fprintf("%i]\n\n", v(end))

disp('Vector sorted in descending order:')
disp(descending_vector)

disp('Vector sorted in ascending order:')
disp(ascending_vector)

%final print and display statements.

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.