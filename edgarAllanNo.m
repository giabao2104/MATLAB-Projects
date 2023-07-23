%    You are trying to read Edgar Allan Poe, but find him way too confusing. Your solution is to try to reverse some of the lines to see if the poems make more sense that way. You will be given the name of a .txt file containing the poem to read through. When reading through the poem, write your revised poem to a file named 'rev_<filename>.txt'. To decide which lines to reverse/keep/not include, check for a few conditions:
%If the line has a number of characters divisible by 3 or 5, the line should be reversed (character by character) and printed to the new file. I
%If the number of characters fails this but is an even number, it should be printed to the new file as it appears in the given file. 
%If the line has an amount of characters that do not meet either of these requirements, do not write a new line.
function [ca] = edgarAllanNo(filename)
fh = fopen(filename);
[word,~] = strtok(filename,'.');
writeFile = ['rev_' word '.txt'];
fh2 = fopen(writeFile,'w');
string = fgetl(fh);

ca = [{}];

while ischar(string)
    len = length(string);
    if rem(len,3) == 0 | rem(len,5) == 0
        string1 = string;
        string1(1:end) = string(end:-1:1);
        fprintf(fh2,'%s\n',string1);
        ca = [ca {string1}];
    elseif rem(length(string),3) ~= 0 & rem(length(string),5) ~= 0 & rem(length(string),2) == 0
        fprintf(fh2,'%s\n',string);
        ca = [ca {string}];
    end
    string = fgetl(fh);
end

fclose('all')