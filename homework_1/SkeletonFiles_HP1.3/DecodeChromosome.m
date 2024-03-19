% Note: Each component of x should take values in [-a,a], where a = maximumVariableValue.

function x = DecodeChromosome(chromosome,numberOfVariables,maximumVariableValue)
    
    variableLength = length(chromosome)/numberOfVariables;
    x = zeros(1, numberOfVariables);

    indexDisplacement = 0;
    for i = 1:numberOfVariables
        for j = 1:variableLength
            x(i) = x(i) + chromosome(j + indexDisplacement) .* (2.^-j);
        end
        x(i) = -maximumVariableValue + 2 .* maximumVariableValue ./ (1-2.^(-variableLength)) * x(i);
        indexDisplacement = indexDisplacement + variableLength;
    end
  
end
