%Write a function called sum67 that takes in a vector and outputs the sum of the numbers in the vector, except ignore sections of the vector starting with a 6 extending to the next 7 (every 6 will be followed by at least one 7). You may not use the find or strfind functions. 
function output = sum67(vec)
ind = 1:length(vec)
maskFor6 = vec == 6;
maskFor7 = vec == 7;
ind6 = ind(maskFor6);
ind7 = ind(maskFor7);

for i = length(ind6):-1:1
    start = ind6(i);
    ending = ind7(i);
    vec(start:ending) = [];
end
output = sum(vec);
end
