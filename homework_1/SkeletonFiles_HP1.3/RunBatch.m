%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parameter specifications
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

numberOfRuns = 100;                % Do NOT change
populationSize = 100;              % Do NOT change
maximumVariableValue = 5;          % Do NOT change (x_i in [-a,a], where a = maximumVariableValue)
numberOfGenes = 50;                % Do NOT change
numberOfVariables = 2;		   % Do NOT change
numberOfGenerations = 300;         % Do NOT change
tournamentSize = 2;                % Do NOT change
tournamentProbability = 0.75;      % Do NOT change
crossoverProbability = 0.8;        % Do NOT change


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Batch runs
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Define more runs here (pMut < 0.02) ...

mutationProbability = 0;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList000 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList000(i,1) = maximumFitness;
end

mutationProbability = 0.02;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList002 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList002(i,1) = maximumFitness;
end


mutationProbability = 0.04;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList004 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList004(i,1) = maximumFitness;
end

mutationProbability = 0.06;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList006 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList006(i,1) = maximumFitness;
end

mutationProbability = 0.12;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList012 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList012(i,1) = maximumFitness;
end

mutationProbability = 0.2;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList020 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList020(i,1) = maximumFitness;
end

mutationProbability = 0.28;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList029 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList028(i,1) = maximumFitness;
end

mutationProbability = 0.32;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList032 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList032(i,1) = maximumFitness;
end

mutationProbability = 0.36;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList036 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList036(i,1) = maximumFitness;
end

mutationProbability = 0.40;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList040 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList040(i,1) = maximumFitness;
end

mutationProbability = 0.44;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList044 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList044(i,1) = maximumFitness;
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Summary of results
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

average000 = mean(maximumFitnessList000);
median000 = median(maximumFitnessList000);
std000 = sqrt(var(maximumFitnessList000));
sprintf('PMut = 0.00: Median: %0.10f, Average: %0.10f, STD: %0.10f', median000, average000, std000)


average002 = mean(maximumFitnessList002);
median002 = median(maximumFitnessList002);
std002 = sqrt(var(maximumFitnessList002));
sprintf('PMut = 0.02: Median: %0.10f, Average: %0.10f, STD: %0.10f', median002, average002, std002)

average004 = mean(maximumFitnessList004);
median004 = median(maximumFitnessList004);
std004 = sqrt(var(maximumFitnessList004));
sprintf('PMut = 0.04: Median: %0.10f, Average: %0.10f, STD: %0.10f', median004, average004, std004)

average006 = mean(maximumFitnessList006);
median006 = median(maximumFitnessList006);
std006 = sqrt(var(maximumFitnessList006));
sprintf('PMut = 0.06: Median: %0.10f, Average: %0.10f, STD: %0.10f', median006, average006, std006)

average012 = mean(maximumFitnessList012);
median012 = median(maximumFitnessList012);
std012 = sqrt(var(maximumFitnessList012));
sprintf('PMut = 0.12: Median: %0.10f, Average: %0.10f, STD: %0.10f', median012, average012, std012)

average020 = mean(maximumFitnessList020);
median020 = median(maximumFitnessList020);
std020 = sqrt(var(maximumFitnessList020));
sprintf('PMut = 0.20: Median: %0.10f, Average: %0.10f, STD: %0.10f', median020, average020, std020)

average028 = mean(maximumFitnessList028);
median028 = median(maximumFitnessList028);
std028 = sqrt(var(maximumFitnessList028));
sprintf('PMut = 0.28: Median: %0.10f, Average: %0.10f, STD: %0.10f', median028, average028, std028)

average032 = mean(maximumFitnessList032);
median032 = median(maximumFitnessList032);
std032 = sqrt(var(maximumFitnessList032));
sprintf('PMut = 0.32: Median: %0.10f, Average: %0.10f, STD: %0.10f', median032, average032, std032)

average036 = mean(maximumFitnessList036);
median036 = median(maximumFitnessList036);
std036 = sqrt(var(maximumFitnessList036));
sprintf('PMut = 0.36: Median: %0.10f, Average: %0.10f, STD: %0.10f', median036, average036, std036)

average040 = mean(maximumFitnessList040);
median040 = median(maximumFitnessList040);
std040 = sqrt(var(maximumFitnessList040));
sprintf('PMut = 0.40: Median: %0.10f, Average: %0.10f, STD: %0.10f', median040, average040, std040)

average044 = mean(maximumFitnessList044);
median044 = median(maximumFitnessList044);
std044 = sqrt(var(maximumFitnessList044));
sprintf('PMut = 0.44: Median: %0.10f, Average: %0.10f, STD: %0.10f', median044, average044, std044)

medianFitness = [median000, median002, median004, median006, median012, median020, median028, median032 ,median036, median040, median044]
mutationProbabilities = [0, 0.02, 0.04, 0.06, 0.12, 0.20, 0.28, 0.32, 0.36, 0.4, 0.44];

plot(mutationProbabilities, medianFitness)