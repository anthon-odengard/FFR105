%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parameter specifications
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

numberOfRuns = 30;            
populationSize = 50;              
weigthMax = 10;          
numberOfInputs = 3;	
numberOfHidden = 15;
numberOfOutputs = 2;
numberOfGenerations = 100;         
tournamentSize = 2;                
tournamentProbability = 0.75;      
crossoverProbability = 0.8;        
mutationProbability = 0.02;
maximumValidationFitness = 0;

for i = 1:numberOfRuns 
  [maximumFitness, validationFitness, bestChromosome]  = RunFFNNOptimization(populationSize, numberOfInputs, numberOfHidden, numberOfOutputs,  weigthMax, ...
    tournamentSize, tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
  if validationFitness(end) > maximumValidationFitness
      maximumValidationFitness = validationFitness(end);
      bestValidation = validationFitness;
      bestTraining = maximumFitness;
      bestChromosome = bestChromosome(end,:);
      writematrix(bestChromosome,"bestChromosome.txt")
      save("bestChromosome.mat", "bestChromosome")
  end
 
end

hold on
plot(bestTraining)
plot(bestValidation)
legend('Training fitness','Validation fitness')
hold off
