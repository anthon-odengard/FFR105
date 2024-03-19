function swarmVelocities = UpdateSwarmVelocities(swarmVelocities, swarmPositions, bestPositions, swarmBestPosition, C1, C2, w)
    
    swarmSize = size(swarmVelocities);
    r = rand(swarmSize);
    q = rand(swarmSize);
    swarmBest = zeros(swarmSize) + swarmBestPosition;

    weightedVelocity = swarmVelocities .* w;
    cognitiveComponent = (bestPositions - swarmBestPosition) .* q .* C1;
    socialComponent = (swarmBest - swarmPositions) .* r .* C2;
    swarmVelocities = weightedVelocity + cognitiveComponent + socialComponent;

end