%Function: framedpic
%Input:
%(char) The name of the image file
%File Output:
%The updated image with edges
%Banned Functions: bwboundaries, imclearborder, regionprops, bwtraceboundary, bwperim, bwselect, grayconnected, imbinarize
%Description: Given the name of the file containing an image of a golden figure on a white background, add a black border to every gold pixel that touches the white background. Output the edged image to an image file with '_framed.png' appended to the original file name.
%Note:
%The only colors present in the test cases are listed below: 
 %       Gold: [247, 216, 123]
  %      White: [255, 255, 255]
%You must use [0, 0, 0] as the edge black.
%Do not check diagonal adjacency.
%Bordering pixels are defined as any white pixels directly above, below, or to the left or right side of a gold pixel.
%You should be replacing the bordering white pixels with black pixels. Do not replace the gold pixels.
%The edges of the image are guaranteed to contain only white pixels.
%Like examples below, some test cases may have holes in the middle of the figure, so make sure to frame the inside edges of the figure as well.
function [] = framedpic(filename)
img = imread(filename); 
r = img(:,:,1); 
g = img(:,:,2); 
b = img(:,:,3); 
[rows,cols,~] = size(img);
for x = 2:rows-1
    for y = 2:cols-1
        currRed = r(x,y);
        currGreen = g(x,y); 
        currBlue = b(x,y);
        
        upRed = r(x-1,y); 
        upGreen = g(x-1,y); 
        upBlue = b(x-1,y); 
        
        downRed = r(x+1,y); 
        downGreen = g(x+1,y);
        downBlue = b(x+1,y);
        
        rightRed = r(x,y+1); 
        rightGreen = g(x,y+1);
        rightBlue = b(x,y+1);
        
        leftRed = r(x,y-1);
        leftGreen = g(x,y-1);
        leftBlue = b(x,y-1);
        
        if currRed == 247 & currGreen == 216 & currBlue == 123
            if upRed == 255 & upGreen == 255 & upBlue == 255
                r(x-1,y) = 0;
                g(x-1,y) = 0;
                b(x-1,y) = 0;
            end
            if leftRed == 255 & leftGreen == 255 & leftBlue == 255
                r(x,y-1) = 0;
                g(x,y-1) = 0;
                b(x,y-1) = 0;
            end
            if downRed == 255 & downGreen == 255 & downBlue == 255
                r(x+1,y) = 0;
                g(x+1,y) = 0;
                b(x+1,y) = 0;
            end
            if rightRed == 255 & rightGreen == 255 & rightBlue == 255
                r(x,y+1) = 0;
                g(x,y+1) = 0;
                b(x,y+1) = 0;
            end
        end
    end
end

imgNew = cat(3,r,g,b);
[name,ext] = strtok(filename,'.')
newFileName = [name '_framed.png'];
imwrite(imgNew,newFileName)