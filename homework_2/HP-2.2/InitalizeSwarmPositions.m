function swarmPositions = InitalizeSwarmPositions(xMin, xMax, numberOfBoids)
    
    numberOfVariables = length(xMax);
    randomMatrix = rand(numberOfBoids,numberOfVariables);
    swarmPositions = zeros(numberOfBoids,numberOfVariables) + xMax-xMin;
    swarmPositions = swarmPositions .* randomMatrix;
    swarmPositions = swarmPositions + xMin;

end




    