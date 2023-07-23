%Given the file name of an image to fix and a cell array containing vectors of pairs of quadrants/how many degrees they need to be rotated, fix the image by rotating the quadrants that need to be rotated (based on the second input). Your code should also account for the fact that the input image is the negative of what it needs to be.
function arr = tSwizzle(filename,ca)
A = imread(filename);
topLeft = A(1:end/2,1:end/2,:);
topRight = A(1:end/2,end/2+1:end,:);
botLeft = A(end/2+1:end,1:end/2,:);
botRight = A(end/2+1:end,end/2+1:end,:);
[r,c] = size(ca);
for x = 1:c
    vec = ca{x};
    if vec(1) == 2
        topLeft = rot90(topLeft,vec(2)/90);
    elseif vec(1) == 1
        topRight = rot90(topRight,vec(2)/90);
    elseif vec(1) == 3
        botLeft = rot90(botLeft,vec(2)/90);
    elseif vec(1) == 4
        botRight = rot90(botRight,vec(2)/90);
    end
end
arr = [topLeft,topRight;botLeft,botRight];
arr = 255 - arr;
imshow(arr)
end