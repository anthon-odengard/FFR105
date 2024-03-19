function swarmVelocities = InitalizeSwarmVelocities(xMin, xMax, numberOfBoids, alpha)
    
    numberOfVariables = length(xMax);
    randomMatrix = rand(numberOfBoids,numberOfVariables);
    swarmVelocities = zeros(numberOfBoids,numberOfVariables) + xMax-xMin;
    swarmVelocities = swarmVelocities .* randomMatrix;
    swarmVelocities = swarmVelocities - (xMax - xMin)./2;
    swarmVelocities = alpha .* swarmVelocities;

end
