function pheromoneLevel = InitializePheromoneLevels(numberOfCities, tau0)
    
    pheromoneLevel = zeros(numberOfCities,numberOfCities);
    pheromoneLevel(:,:) = numberOfCities ./ tau0;


    %{
    tabuList = zeros(numberOfCities);
    cityLocations = LoadCityLocations();
    euclideanDistanceCities = squareform(pdist(cityLocations));

    startingNode = randi([1,numberOfCities]);
    tabuIndex = 1
    tabuList(tabuIndex) = startingNode;
    lengthNearestNeighbourTour = 0
    
    currentNode = startingNode;
    while tabuIndex < numberOfCities
        tabuIndex = tabuIndex + 1
        neighbourDistans = euclideanDistanceCities(currentNode,:)
        [nextNodeValue, nextNodeIndex] = min(neighbourDistans(neighbourDistans > 0))
        tabuList(tabuIndex) = nextNodeIndex;
        currentNode = nextNodeIndex;
        lengthNearestNeighbourTour = lengthNearestNeighbourTour + nextNodeValue
    end

    tau
%}