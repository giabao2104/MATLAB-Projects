%You're given informationon a player's name (input1), strength (input2), agility (input3), speed (input4) and handedness (input5). First calculate the players total speed stat by multiplying agility and speed. Then, determine the player's position. If the player's handedness is 'right' and their total speed stat is greater than or equal to their total strength stat, their position is ​'outfielder'​, otherwise it is ​'batter'​. If a player's handedness is 'left' ​and their total speed is less than their strength, their position is ​'pitcher'​, otherwise, their position is ​'batter'​. Finally, if the handedness is 'both', the player's position is ​'pitcher'. 
% Next, you will determine if the player will make it to Nationals. If the player is a batter they can make it to nationals if either their strength stat or total speed stat is at least 25000. If the player is an outfielder, they will make it to Nationals if their total speed stat is at least 50000. If the player is a pitcher, they will automatically make it to Nationals if their handedness is 'both', but they can also make it if their strength score is at least 100000. Finally, output a string detailing what happened to the player. Output a different string depending on whether or not the player qualifies for Nationals.
    %●If the player qualifies, output:
    %'CONGRATULATIONS! <player's name> has been selected to play in Nationals as a(n) <position>.'
    %●If the player does not qualify, output:
%'<player's name> was not qualified enough to play in Nationals as a(n) <position>. Try again next year!'
function outputStatement = majorLeagueStats(name,strength,agility,speed,handedness)
totalSpeed = agility .* speed;

switch handedness
    case 'right'
        if totalSpeed >= strength
            position = 'outfielder';
        else
            position = 'batter';
        end
       
    case 'left'
        if totalSpeed < strength
            position = 'pitcher';
        else 
            position = 'batter';
        end
        
    case 'both'
        position = 'pitcher';
end

switch position
    case 'batter'
        if strength >= 25000 | totalSpeed >= 25000
            nationals = true;
        else 
            nationals = false;
        end
        
    case 'outfielder'
        if totalSpeed >= 500000
            nationals = true;
        else
            nationals = false;
        end
    
    case 'pitcher' 
        if strcmp(handedness,'both') | strength >= 100000
            nationals = true;
        else
            nationals = false;
        end
        
end

if nationals
    outputStatement = sprintf('CONGRATULATIONS! %s has been selected to play in Nationals as a(n) %s.',name,position);
else 
    outputStatement = sprintf('%s was not qualified enough to play in Nationals as a(n) %s. Try again next year!',name,position);
end
