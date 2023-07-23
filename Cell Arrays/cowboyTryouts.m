%You have been tasked with assembling the greatest, most unstoppable team of cowboys to ever exist. You are given an Excel file containing data about the different cowboys who are trying out for the team. The first column contains the names of the cowboys. The file is also guaranteed to contain the following columns in no particular order: 'Horse color' (this column contains all chars), 'Lasso Time' (this column contains all doubles), and 'Draw Time' (this column contains all doubles). Your code should do the following in order: 
%Delete all of the cowboys whose favorite color of horse is gray (case insensitive) 
%Create a new column called 'Stats' which contains Lasso Time divided by Draw Time for each cowboy rounded to the second decimal place
%Sort the values based on the column with the header matching the second input string in descending order 
%Delete the coulmn with the header matching the second input string
function cellarray = cowboyTryouts(fileName,colName)

ca = readcell(fileName);
headers = ca(1,:);
data = ca(2:end,:);

maskColor = strcmp(headers, 'Horse Color');
colorColumn = data(:,maskColor);

grayFind = strcmpi(colorColumn,'gray');
data(grayFind,:) = [];

%step 2
drawMask = strcmp(headers, 'Draw Time');
drawCol = cell2mat(data(:,drawMask));
lassoMask = strcmp(headers,'Lasso Time');
lassoCol = cell2mat(data(:,lassoMask));

statsCol = lassoCol ./ drawCol;
statsCol = num2cell(statsCol);
data = [data, statsCol];
headers = [headers, {'Stats'}];

%step 3
colMask = strcmp(headers, colName);
mysteryCol = data(:,colMask);
if ischar(mysteryCol{1})
    [~,inds] = sort(mysteryCol);
    indsD = inds(end:-1:1);
elseif isnumeric(mysteryCol{1})
    [~,indsD] = sort(cell2mat(mysteryCol),'d');
end
data = data(indsD,:);

%step 4
fullCA = [headers; data];
fullCA(:,colMask) = [];
cellarray = fullCA;
