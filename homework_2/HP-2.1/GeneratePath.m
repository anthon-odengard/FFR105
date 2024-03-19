function path = GeneratePath(pheromoneLevel, visibility, alpha, beta)
    
    pathLength = length(pheromoneLevel);
    path = zeros(1, pathLength);
    startingNode = randi([1,pathLength]);
    tabuIndex = 1;
    tabuList(tabuIndex) = startingNode;
    path(tabuIndex) = startingNode;

    while tabuIndex < pathLength
        tabuIndex = tabuIndex + 1;
        nextNodeIndex = GetNode(tabuList, pheromoneLevel, visibility, ...
            alpha, beta);
        tabuList(tabuIndex) = nextNodeIndex;
        path(tabuIndex) = nextNodeIndex;
    end
    
end


