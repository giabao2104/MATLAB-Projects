%Your job is to put together a cell array with information about the top artists in the charts right now. Given an excel file with columns with the corresponding headers: 'Artist name' (char), 'Platform 1' (double),  'Platform 2' (double),  'Platform 3', 'Platform 1  $ per stream' (double), 'Platform 2  $ per stream' (double), 'Platform 3  $ per stream' (double), '2020-2022 Release' (logical), containing information about various artists streaming in different platforms and whether they have new releases, create a new cell array containing information about the M top artists such that:
%No artist that has not released new music in the past two years is included;
%Include a column with the total number of streams across all platforms with header 'Total streams';
%Include a column with an estimate of how much their music has grossed with the header 'Streaming revenue';
%Include a row with their ranking with the header 'Ranking';
%The artists are sorted in descending order with respect to the total number of streams;
%The cell array should have each artist name and total sorted in descending order with respect to the total number of streams;
%The cell array should only include the top M artists.
function output = topArtists(filename,numb)
cellarray = readcell(filename);
header = cellarray(1,:);
data = cellarray(2:end,:);

%% First condition (2 years)
year2Data = data(:,end);
emptyA = [];
for i = 1:length(year2Data)
    emptyA = [emptyA year2Data{i}]; %find the index of all the trues and falses
end
[~,indF] = find(~emptyA);
data(indF,:) = []; %delete artists that have not released music in 2 years.
data(:,end) = [];

%% Add extra columns
header(:,end+1) = {'Total streams'};
header(:,end+1) = {'Streaming revenue'};
header(:,end+1) = {'Ranking'};

dataNum = cell2mat(data(:,2:end));
dataNum(:,end+1) = dataNum(:,1) + dataNum(:,3) + dataNum(:,5);
dataNum(:,end+1) = dataNum(:,1) .* dataNum(:,2) + dataNum(:,3) .* dataNum(:,4) + dataNum(:,5) .* dataNum(:,6);
dataNum = num2cell(dataNum);
data(:,2:9) = dataNum;

%%Get rid of headers
mask1 = strcmp(header,'Platform 1');
mask1 = find(mask1);
header(:,mask1) = [];
data(:,mask1) = [];

mask2 = strcmp(header,'Platform 2');
mask2 = find(mask2);
header(:,mask2) = [];
data(:,mask2) = [];

mask3 = strcmp(header,'Platform 3'); 
mask3 = find(mask3);
header(:,mask3) = [];
data(:,mask3) = [];

header(:,2:5) = [];
data(:,2:4) = [];

%% condition 3 - calculations
dataNumFinal = cell2mat(data(:,2:end));
[~,indStreams] = sort(dataNumFinal(:,1),'descend');
data = data(indStreams,:);
data(numb+1:end,:) = [];
oneToNumb = num2cell([1:numb'])
data(1:numb,end+1) = oneToNumb;


%concat cells
output = [header;data];
end