%Write a function called modThree that takes in a vector of numbers and outputs a single true if the vector contains either three odd values or three even values next to each other.
function output = modThree(vec)
totalOdd = 0;
totalEven = 0;

for ind = 1:length(vec)
    if rem(vec(ind),2) == 1
        totalOdd = totalOdd + 1;
        totalEven = 0;
        if totalOdd == 3
            output = true;
            break
        else
            output = false;
        end

    elseif rem(vec(ind),2) == 0
        totalEven = totalEven + 1;
        totalOdd = 0;
        if totalEven == 3
            output = true;
            break
        else
            output = false;
        end
    end

end
end