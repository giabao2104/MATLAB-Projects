%	You are given the filename containing an image of a single-color shape on a white background. Find the number of times that this shape occurs in the image given by the second filename. Output this number.
function shapeCount = shapeCounter(filename1,filename2)
calib = imread(filename1);
mult = imread(filename2);
%Look for numerator
r1 = mult(:,:,1);
g1 = mult(:,:,2);
b1 = mult(:,:,3);
rmask1 = r1 == 255;
gmask1 = g1 == 255;
bmask1 = b1 == 255; 

whiteMask1 = rmask1 & gmask1 & bmask1;
colorMask1 = ~whiteMask1;
numPix = sum(sum(colorMask1)); 

%Get denominator 
r2 = calib(:,:,1);
g2 = calib(:,:,2);
b2 = calib(:,:,3);
rmask2 = r2 == 255;
gmask2 = g2 == 255;
bmask2 = b2 == 255; 

whiteMask2 = rmask2 & gmask2 & bmask2;
colorMask2 = ~whiteMask2;
area1 = sum(sum(colorMask2));

shapeCount = numPix/area1;