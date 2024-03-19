function mutatedIndividual = Mutate(individual, mutationProbability);

    numberOfGenes = length(individual);
    mutatedIndividual = individual;

    for i = 1:numberOfGenes
        randomNumber = rand;
        if randomNumber < mutationProbability
            mutatedIndividual(i) = 1 - individual(i);
        else
            mutatedIndividual(i) = individual(i);
        end
    end

end

