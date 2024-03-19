function bestPositions = CompareBestPositions(bestPositions, swarmPositions)
    
    bestPositionObjective = EvaluateSwarmObjective(bestPositions);
    swarmPositionObjective = EvaluateSwarmObjective(swarmPositions);
    betterIndexes = find(swarmPositionObjective < bestPositionObjective);
    bestPositions(betterIndexes, :) = swarmPositions(betterIndexes, :);