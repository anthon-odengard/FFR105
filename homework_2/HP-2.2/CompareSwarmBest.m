function swarmBest = CompareSwarmBest(swarmBest, currentSwarm)
       
    swarmBestObjective = EvaluateSwarmObjective(swarmBest);
    currentSwarmObjective = EvaluateSwarmObjective(currentSwarm);
    [minValue, minValueIndex] = min(currentSwarmObjective);
    if minValue < swarmBestObjective
        swarmBest = currentSwarm(minValueIndex,:);
    else
        swarmBest = swarmBest;
    end
    
end