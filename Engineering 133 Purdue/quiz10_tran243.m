function [PressureP] = ideal_func(n,R,T,V) %define function with output P

PressureP = (n*R*T)/V; %calculations within the function

%n = 0.579;
%R = 8.3145; 
%T = 291; test cases
%V = 0.02;