function selectedIndividualIndex = TournamentSelect(fitnessList, tournamentProbability, tournamentSize);

tournamentAttenders = zeros(tournamentSize, 2);
fitnessSampleSize = length(fitnessList);
jRandom = randi([1, fitnessSampleSize], 1, tournamentSize);

for i = 1:tournamentSize
    tournamentAttenders(i,1) = fitnessList(jRandom(i));
    tournamentAttenders(i,2) = jRandom(i);
    tournamentAttenders = sortrows(tournamentAttenders, 1, 'descend');
end

for i = 1:tournamentSize
    randomNumber = rand(1,1);
    if randomNumber > tournamentProbability && i ~= tournamentSize
        % Do nothing
    else
        selectedIndividualIndex = tournamentAttenders(i,2);
        break
    end
end