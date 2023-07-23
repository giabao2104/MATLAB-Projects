%You want to better understand the dynamics of energy markets across the world. Given an excel file with columns containing the corresponding headers: 'Country' (char), 'Continent' (char), 'Production (quad Btu)' (double), 'Coal (quad Btu)' (double), 'Natural gas (quad Btu)' (double), 'Petroleum and other liquids (quad Btu)' (double), 'Nuclear (quad Btu)' (double), 'Renewables and other (quad Btu)' (double). Your function should return the aforementioned items in the output list.
function [out1,out2,out3,out4] = energyMarkets(file)
ca = readcell(file);
header = ca(1,:);
data1 = ca(2:end,:); %four copies of data to work on four different problems
data2 = ca(2:end,:);
data3 = ca(2:end,:);
data4 = ca(2:end,:);

%%Looking for Output 1
maskAsia = strcmp(data1(:,2),'Asia');
indexAsia = find(maskAsia);
data1 = data1(indexAsia,:); %get all Asian countries
matData1 = cell2mat(data1(:,3:end));
matData1(:,end+1) = sum(matData1,2); %calculations
matData1(:,end+1) = matData1(:,end-1) ./ matData1(:,end);
[~,ind1] = sort(matData1(:,end),'descend');
resortData1 = data1(ind1,:);
out1 = resortData1{1,1};

%%Looking for Output 2
maskEurope = strcmp(data2(:,2),'Europe');
indexEurope = find(maskEurope);
data2 = data2(indexEurope,:); %get all European countries 
matData2 = cell2mat(data2(:,3:end));
matData2(:,end+1) = matData2(:,end-1) ./ matData2(:,end-2); %calculations
[~,ind2] = sort(matData2(:,end),'descend');
resortData2 = data2(ind2,:);
out2 = resortData2{2,1};

%%Looking for Output 3
matData3 = cell2mat(data3(:,3:end));
[~,ind3] = sort(matData3(:,end),'descend');
sortedData3 = data3(ind3,:);
out3 = sortedData3{1,end};

%%Looking for Output 4
matData4 = cell2mat(data4(:,3:end));
[~,ind4] = sort(matData4(:,end-2),'ascend');
sortedData4 = data4(ind4,:);
out4 = sortedData4{1,end-2};
end