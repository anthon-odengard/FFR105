function [maximumTrainingFitnessList, maximumValidationFitnessList,bestChromosomeGeneration] = RunFFNNOptimization(populationSize, nInputs, nHidden, nOutputs,  wMax, ...
    tournamentSize, tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);

trainingRange = 10;
validationRange = 5;
numberOfGenes = nInputs .* nHidden + nHidden + nHidden .* nOutputs + nOutputs;
population = InitializeFFNNPopulation(populationSize,numberOfGenes);
validationFitness = 0;
maximumTrainingFitnessList = zeros(1,numberOfGenerations);
maximumValidationFitnessList = zeros(1,numberOfGenerations);
bestChromosomeGeneration = zeros(numberOfGenerations,numberOfGenes);

for generation = 1:numberOfGenerations
   
    maximumFitness  = 0.0;
    fitnessList = zeros(1,populationSize);
    for i = 1:populationSize
        chromosome = population(i,:);
        fitness = 0;
        for trainingSet = 1:trainingRange
            fitness = fitness + EvaluateNetwork(chromosome, trainingSet, 1 , nInputs, nHidden, nOutputs, wMax)./trainingRange;
        end
        
        fitnessList(i) = fitness;
        if (fitnessList(i) > maximumFitness)
            maximumFitness  = fitnessList(i);
            iBestIndividual = i;
            bestChromosome = chromosome;
        end
    end
    maximumTrainingFitnessList(generation) = maximumFitness;
    bestChromosomeGeneration(generation,:) = bestChromosome;
    previousValidationFitness = validationFitness;
    validationFitness = 0;
    for validationSet = 1:validationRange
        validationFitness = validationFitness + EvaluateNetwork(bestChromosome, validationSet, 2 , nInputs, nHidden, nOutputs, wMax)./validationRange;
    end
    maximumValidationFitnessList(generation) = validationFitness;
    validationDifference = validationFitness - previousValidationFitness;
    if validationDifference < 0
        previousGeneration = generation-1;
        maximumTrainingFitnessList = maximumTrainingFitnessList(1:previousGeneration);
        maximumValidationFitnessList = maximumValidationFitnessList(1:previousGeneration);
        bestChromosomeGeneration = bestChromosomeGeneration(1:previousGeneration, :);
        break;
    end

    temporaryPopulation = population;
    for i = 1:2:populationSize
        i1 = TournamentSelect(fitnessList,tournamentProbability,tournamentSize);
        i2 = TournamentSelect(fitnessList,tournamentProbability,tournamentSize);
        r = rand;
        if (r < crossoverProbability)
            individual1 = population(i1,:);
            individual2 = population(i2,:);
            newIndividualPair = Cross(individual1, individual2);
            temporaryPopulation(i,:) = newIndividualPair(1,:);
            temporaryPopulation(i+1,:) = newIndividualPair(2,:);
        else
            temporaryPopulation(i,:) = population(i1,:);
            temporaryPopulation(i+1,:) = population(i2,:);
        end
    end

    temporaryPopulation(1,:) = population(iBestIndividual,:);
    for i = 2:populationSize
        tempIndividual = Mutate(temporaryPopulation(i,:),mutationProbability);
        temporaryPopulation(i,:) = tempIndividual;
    end
    population = temporaryPopulation;
end

end