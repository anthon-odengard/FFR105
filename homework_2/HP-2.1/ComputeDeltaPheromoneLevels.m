function deltaPheromoneLevel = ComputeDeltaPheromoneLevels(pathCollection,pathLengthCollection);
    
    numberOfAnts = length(pathCollection);
    pathLength = length(pathLengthCollection);
    deltaPheromoneLevel = zeros(numberOfAnts);
    for k = 1:pathLength
        deltaPheromoneAnt = zeros(numberOfAnts);
        pathAnt = pathCollection(k,:);
        for i = 1:numberOfAnts-1
            deltaPheromoneAnt(pathAnt(i), pathAnt(i+1)) = 1/pathLengthCollection(k);
        end
        deltaPheromoneLevel = deltaPheromoneLevel + deltaPheromoneAnt;
    end
    
