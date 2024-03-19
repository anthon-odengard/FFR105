function swarmObjective = EvaluateSwarmObjective(x)
   
    firstElement = x(:,1).^2 + x(:,2) - 11;
    secondElement = x(:,1) + x(:,2).^2 - 7;
    swarmObjective = firstElement.^2 + secondElement.^2;
    
end
