function population = InitializeFFNNPopulation(populationSize,numberOfGenes)
    
    population = 2* rand(populationSize,numberOfGenes) - 1 ;

end