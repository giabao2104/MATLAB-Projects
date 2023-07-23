%Write a function called either24 that takes in a vector of numbers and outputs true if the vector contains a 2 next to a 2 or a 4 next to a 4, but not both. 
%Do not use num2str, char, or strfind
function out = either24(vec)
out2 = false;
out4 = false;
for i = 1:length(vec)-1
    myThing = vec(i);
    nextThing = vec(i+1);
    if myThing == 2 & nextThing == 2
        out2 = true;
    elseif myThing == 4 & nextThing == 4
        out4 = true;
    end
end
if out2 & out4
    out = false;
elseif out2 | out4
    out = true;
else
    out = false;
end
