%Your job is to find the perfect location for the next rodeo. Given an excel file with columns corresponding to the headers %Name’ (char), ‘South’ (logical), ‘Square Feet’ (double), ‘Capacity’ (double), and ‘Fun Factor’ (double) containing information about potential rodeo locations, do the following operations to find the best city for the next rodeo: 
%Find the column labeled %South’ and delete all cities that are not in the south 
%Find the product of the %Square Feet’ and ‘Capacity’ for each city.  This represents the 'Actual Size'.
%You should only consider cities whose 'Actual Size' is in top half of sizes.
%Of these remaining options, the city where the next rodeo will take place will be the city with the highest fun factor.
function city = rodeoFinder(filename)
cellArray = readcell(filename);
header = cellArray(1,:); data = cellArray(2:end,:);

myColMask = strcmp(header,'South');
southCol = [data{:,myColMask}]; 
citiesToDel = [];

dataKept = data(southCol,:);

sqrFtMask = strcmp(header,'Square Feet');
sqrFt = dataKept(:,sqrFtMask);
capMask = strcmp(header,'Capacity');
cap = dataKept(:,capMask);

actSize = cell2mat(cap) .* cell2mat(sqrFt);
[~,sortOrder] = sort(actSize,'d');
dataKept = dataKept(sortOrder,:);

dataKept = dataKept(1:floor(end/2),:);

funFactorMask = strcmp(header,'Fun Factor');
funFactorCol = dataKept(:,funFactorMask);
[~,maxInd] = max(cell2mat(funFactorCol));

citiesMask = strcmp(header,'Name');
citiesCol = dataKept(:,citiesMask);
city = citiesCol{maxInd};

end