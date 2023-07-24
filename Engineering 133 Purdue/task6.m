%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 13300 Fall 2021 
% 
% Problem Description: Add the problem description here and delete this 
%                      line. 
%
%
%
% Assignment Information
%   Assignment:     e.g. Ind HW9 - MA1
%   Author:         Name, login@purdue.edu
%   Team ID:        LC#-## (e.g. LC1 - 01; for section LC1, team 01)
%  	
%   Contributor:    Name, login@purdue [repeat for each]
%   My contributor(s) helped me:	
%     [ ] understand the assignment expectations without
%         telling me how they will approach it.
%     [ ] understand different ways to think about a solution
%         without helping me plan my solution.
%     [ ] think through the meaning of a specific error or
%         bug present in my code without looking at my code.
%   Note that if you helped somebody else with their code, you
%   have to list that person as a contributor here as well.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%% ____________________
%% INITIALIZATION
Amatrix = [2,5,8,5;10,9,1,4;6,3,2,10]; % creating Amatrix vector
Bvector = Amatrix(1,:); %creating Bvector (only first row of Amatrix)
%% ____________________
%% CALCULATIONS
Bmatrix = [2,5,8,5;Bvector;6,3,2,10];
Gvector = Amatrix(3,:); 
R2C3 = Amatrix(2,3);
Amatrix(1,1) = 55; Amatrix; 
%% ____________________
%% OUTPUTS
Bmatrix
Gvector
Amatrix

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The project I am submitting
% is my own original work.