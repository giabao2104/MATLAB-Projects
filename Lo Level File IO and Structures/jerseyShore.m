%The cast of Jersey Shore has decided to have a reunion!! Snooki and all the others are coming back for an evening of drama, laughs, and who knows what! As a producer, you need to figure out which member was the craziest on the show. Given a structure array with information about each person, figure out which people are eligible for being most crazy, calculate everyone eligibles% crazyScore (formula below), and output a structure array detailing who will be eligible as well as the name of who has been the craziest. The input structure will have the following field names: ’Name’ (str), ‘Age’ (double), ’NetWorth’ (double), ‘DuckPhone’ (logical), ‘favFood’ (str).
%To be eligible:
%DuckPhone must be true
%NetWorth must be over 50
%Favorite food must be %taylor ham’
%After you have found which people are eligible, calculate their crazyScore:
%crazyScore = (Age^2)/(netWorth-length(name))
%Output a structure with field names %Name’ and ‘crazyScore’. The structure array should be in order of crazyScore, with the top crazyScore in the 1st position. 
%Also, output the name of the person with the highest crazyScore.
function [newSt,name] = jerseyShore(st) 

duckPhone = [st.DuckPhone];
netWorth = [st.NetWorth];
favFood = {st.favFood};

delDuck = duckPhone;
delWorth = netWorth > 50; 
delFood = strcmp(favFood,'taylor ham');

mask = delDuck & delWorth & delFood;

st = st(mask);

%get the crazy score bro

names = {st.Name};
age = [st.Age];
newNet = netWorth(mask);
crazy = [];
for i = 1:length(names)
    crazyScore = (age(i)^2)/(newNet(i)-length(names{i}));
    crazy = [crazy crazyScore];
    newSt(i).Name = names{i};
    newSt(i).crazyScore = crazyScore;
end
[~,inds] = sort(crazy,'d');
newSt = newSt(inds);
name = newSt(1).Name;
end