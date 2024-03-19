clear all;
clc;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parameters
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
numberOfBoids = 20;  
alpha = 1.0;
C1= 1;
C2 = 3;
w = 1.4;
velocityMax = 10;
threshold = 0.001;

% Initalize swarm/swarm properties
swarmPositions = InitalizeSwarmPositions([-5, -5], [5, 5], numberOfBoids);
swarmVelocities = InitalizeSwarmVelocities([-5, -5], [5, 5], numberOfBoids, alpha);
swarmObjectives = EvaluateSwarmObjective(swarmPositions);
[swarmBestValue, indexBest] = min(swarmObjectives);
swarmBestPosition = swarmPositions(indexBest, :);
bestPositions = InitalizeSwarmPositions([-5, -5], [5, 5], numberOfBoids);

while any(pdist(swarmPositions) > threshold)

    if(w > 0.3)
       w = w .* 0.9;
    end
    
    bestPositions = CompareBestPositions(bestPositions, swarmPositions);
    swarmBestPosition = CompareSwarmBest(swarmBestPosition, swarmPositions);
    swarmVelocities = UpdateSwarmVelocities(swarmVelocities, ...
        swarmPositions, bestPositions, swarmBestPosition, C1, C2, w);
    swarmVelocities = ConstrainVelocities(swarmVelocities, velocityMax);
    swarmPositions = swarmPositions + swarmVelocities;

end

hold on
ObjectiveContourPlot([-5, -5], [5, 5]);
plot(swarmPositions(:,1), swarmPositions(:,2),'*')
hold off
