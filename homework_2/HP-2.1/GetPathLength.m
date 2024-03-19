function pathLength = GetPathLength(path,cityLocation)
    
    euclideanDistanceCities = squareform(pdist(cityLocation));
    numberOfNodes = length(path);
    nodeDistance = zeros(1, numberOfNodes);
    for i = 1:numberOfNodes-1
        currentNode = path(i);
        nextNode = path(i+1);
        nodeDistance(i) = euclideanDistanceCities(currentNode, nextNode);
    end
    lastNode = path(end);
    startingNode = path(1);
    nodeDistance(end) = euclideanDistanceCities(lastNode, startingNode);
    pathLength = sum(nodeDistance);

end


