%Write a function called shiftVec that takes in a vector and a shift number, and shifts the numbers in the vector based on the value specified by the 2nd input. A positive shift number represents a right shift, and a negative shift number represents a left shift. Numbers should “wrap around” the vector when shifted. Ex: shiftVec([1 2 3 4 5 6], 2) → [5 6 1 2 3 4].  It is guaranteed that the absolute value of the shift number will be in between 1 and the length(vec) - 1. You are not allowed to use the circshift function. 
function output = shiftVec(array,shift)
newVec = array;

if shift > 0 & (shift < length(array) - 1)
   newVec(shift+1:end) = array(1:end-shift);
   newVec(1:shift) = array(end-shift+1:end); 
   output = newVec;

elseif shift > 0 & shift >= length(array) - 1
    newVec(1:shift) = array(end-shift+1:end);
    newVec(end) = array(1);

else
   if (abs(shift) < length(array) - 1 )
   newVec(end+shift+1:end) = array(1:-shift);
   newVec(1:end+shift) = array(-shift+1:end);
   output = newVec;
   else
       newVec(end+shift+1:end) = array(1:-shift);
       newVec(1) = array(end);
       output = newVec;
   end
end
end
