%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 13300 Fall 2021 
% 
% Problem Description: This program will run through different types of 
% matrix manipulation
%
% Assignment Information
%   Assignment:     e.g. Ind HW9 - MA1
%   Author:         Gia Bao Tran, tran243@purdue.edu
%   Team ID:        LC1-24
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
A = zeros(4); %Q4a
vals = [1 3 2 4;5 6 7 8;9 10 11 12;13 15 14 16];%Q4b

%% ____________________
%% COPY & CONCATENATION
M(1:2,1:2) = vals(2:3,2:3);%Q5a

C = vals(1,2:3);%Q5b
D = vals(4,2:3);%Q5c

E = [vals(1,1),(D),vals(1,4)];%Q5d
F = [vals(4,1),(C),vals(4,4)];%Q5e

%% ____________________
%% REPLACE MATRIX ELEMENTS
A(2:3,2:3) = M(1:2,1:2);%Q6a
A(1,1:4) = E(1,1:4);%Q6a
A(4,1:4) = F(1,1:4);%Q6a

A(2,1) = vals(3,4);%Q6b
A(3,1) = vals(2,4);%Q6b
A(2,4) = vals(3,1);%Q6b
A(3,4) = vals(2,1);%Q6b

%% ____________________
%% FINAL MATRIX
X = sum(A); %Q7a
G = [A(1:4,1:4);(X)]; %Q7b
Y = sum(G,2);%Q7c
H = [G(1,1:4),Y(1,1);G(2,1:4),Y(2,1);G(3,1:4),Y(3,1);G(4,1:4),Y(4,1);G(5,1:4),Y(5,1)];%Q7d
H(5,5) = H(1,1)+H(2,2)+H(3,3)+H(4,4);%Q7e

%% ____________________
%% FORMATTED TEXT DISPLAY 
fprintf ('After doing step 8.e, the value of the center of H is %i.',H(3,3))
fprintf ('After doing step 8.e, the value in the upper left of H is %i and the value in the upper right of H is %i.',H(1,1),H(1,5))
fprintf ('After doing step 8.e, the value in the lower left of H is %i and the value in the lower right of H is %i.',H(5,1),H(5,5))

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have we provided
% access to our code to another. The script we are submitting
% is our own original work.
