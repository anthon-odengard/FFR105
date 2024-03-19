function node = GetNode(tabuList, pheromoneLevel, visibility, alpha, beta)
    
    currentNode = tabuList(end);
    tauAlpha = pheromoneLevel .^ alpha;
    etaBeta = visibility .^ beta;
    parameterProduct = tauAlpha .* etaBeta;

    possibleNodes = parameterProduct(currentNode,:);
    possibleNodes(tabuList) = 0;
    sumPossibleNodes = sum(possibleNodes);
    nodeProbability = possibleNodes ./ sumPossibleNodes;
    
    randomNumber = rand;
    probability = 0;
    iNode=0;
    while probability <= randomNumber   
        iNode = iNode + 1;
        probability = probability + nodeProbability(iNode);
        
    end
    
    node = iNode;
end






