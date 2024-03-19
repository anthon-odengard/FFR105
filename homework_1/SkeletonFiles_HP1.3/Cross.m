function newIndividuals = Cross(individual1, individual2)

    numberOfGenes = length(individual1);
    crossoverPoint = randi([1, numberOfGenes], 1, 1);

    newIndividuals = zeros(2, numberOfGenes);
    for i = 1:numberOfGenes
        if i < crossoverPoint
            newIndividuals(1,i) = individual1(i);
            newIndividuals(2,i) = individual2(i);
        else
           newIndividuals(1,i) = individual2(i);
           newIndividuals(2,i) = individual1(i);
        end
    end
    
end

