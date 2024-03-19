function visibility = GetVisibility(cityLocation)
    
    euclideanDistanceCities = squareform(pdist(cityLocation));
    numberOfCities = length(cityLocation);
    visibility = ones(numberOfCities,numberOfCities) ./ euclideanDistanceCities;