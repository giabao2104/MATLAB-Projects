%Function Name: rectangleCounter
%Inputs:
%(char): File name of the image with rectangles
%(double): 1x3 vector with the red, green, and blue values of the rectangles (respectively)
%Output:
%(double) Number of  rectangles on the image
%Function Description:
%Given the name of a file and the red, green, and blue values for a rectangle color (in an array), return the number of rectangles in the image.
%Notes:
%Every rectangle is guaranteed to be the same area and color.
%The number of rectangles in the image should be a whole number.

function count = rectangleCounter(filename,color)
img = imread(filename);
r = img(:,:,1);
g = img(:,:,2);
b = img(:,:,3);

rMask = r == 255; 
gMask = g == 255; 
bMask = b == 255; 

whiteMask = rMask & gMask & bMask; 
colorMask = ~whiteMask; 
totalPix = sum(sum(colorMask)); 

[rows,cols] = find(colorMask);
minC = min(cols);
maskC = cols == minC;
lowRows = rows(maskC);
minR = min(lowRows);

row = minR;
coord = colorMask(row,minC);
length = 0;
while coord
    row = row + 1;
    length = length + 1; 
    coord = colorMask(row,minC);
end

minimumR = min(rows); 
maskR = rows == minimumR; 
lowCols = cols(maskR); 
minimumC = min(lowCols); 

col = minimumC; 
coord = colorMask(minimumR, col);
width = 0; 
while coord
    col = col + 1;
    width = width + 1; 
    coord = colorMask(minimumR,col);
end

areaOfShape = length * width;
count = totalPix ./ areaOfShape;
